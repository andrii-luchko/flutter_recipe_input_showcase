import 'dart:async';
import 'dart:io';
import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/data/datasources/audio_datasource.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/datasources/demo_recipe_data_source.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/data/service/amplitude_visualization_service.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/domain/repositories/audio_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'package:record/record.dart';

const _amplitudeInterval = Duration(milliseconds: 80);

@Injectable(as: AudioRepository)
class AudioRepositoryImpl implements AudioRepository {
  AudioRepositoryImpl(
    this._audioDataSource,
    this._ingredientsDataSource,
    this._amplitudeVisualization,
  );

  final AudioDataSource _audioDataSource;
  final DemoRecipeDataSource _ingredientsDataSource;
  final AmplitudeVisualizationService _amplitudeVisualization;

  final _amplitudeController = StreamController<double>.broadcast();
  StreamSubscription<Amplitude>? _amplitudeSubscription;

  @override
  Future<Result<bool>> checkPermission() async {
    try {
      final hasPermission = await _audioDataSource.hasPermission();
      return Success(hasPermission);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> startRecording() async {
    try {
      final directory = await getTemporaryDirectory();
      final path =
          '${directory.path}/recording_${DateTime.now().millisecondsSinceEpoch}.wav';

      await _audioDataSource.startRecording(path);

      await _amplitudeSubscription?.cancel();
      _amplitudeSubscription = _audioDataSource
          .getAmplitudeStream(_amplitudeInterval)
          .listen((amplitude) {
            _amplitudeController.add(
              _amplitudeVisualization.forRecordAmplitude(amplitude),
            );
          });

      return const Success(null);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<String?>> stopRecording() async {
    try {
      await _amplitudeSubscription?.cancel();
      _amplitudeSubscription = null;

      final path = await _audioDataSource.stopRecording();
      return Success(path);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> pauseRecording() async {
    try {
      await _amplitudeSubscription?.cancel();
      _amplitudeSubscription = null;
      await _audioDataSource.pauseRecording();
      return const Success(null);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> resumeRecording() async {
    try {
      await _audioDataSource.resumeRecording();
      _amplitudeSubscription = _audioDataSource
          .getAmplitudeStream(_amplitudeInterval)
          .listen((amplitude) {
            _amplitudeController.add(
              _amplitudeVisualization.forRecordAmplitude(amplitude),
            );
          });
      return const Success(null);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> cancelRecording() async {
    try {
      await _amplitudeSubscription?.cancel();
      _amplitudeSubscription = null;
      await _audioDataSource.cancelRecording();
      return const Success(null);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<DetectedIngredient>>> extractIngredientsFromRecording(
    String path,
  ) async {
    try {
      final file = File(path);
      final isExist = file.existsSync();
      if (!isExist) {
        return Failure(Exception('recorded_file_not_found'));
      }

      final length = await file.length();
      if (length == 0) {
        return Failure(Exception('recording_file_empty'));
      }
      final dtos = await _ingredientsDataSource.extractIngredientsFromAudio(
        file,
      );

      final ingredients = dtos.map((dto) => dto.toDomain()).toList();
      return Success(ingredients);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Stream<double> getAmplitudeStream() => _amplitudeController.stream;
}
