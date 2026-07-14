import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';

abstract interface class AudioRepository {
  Future<Result<bool>> checkPermission();
  Future<Result<void>> startRecording();
  Future<Result<String?>> stopRecording();
  Future<Result<void>> pauseRecording();
  Future<Result<void>> resumeRecording();
  Future<Result<void>> cancelRecording();
  Future<Result<List<DetectedIngredient>>> extractIngredientsFromRecording(
    String path,
  );
  Stream<double> getAmplitudeStream();
}
