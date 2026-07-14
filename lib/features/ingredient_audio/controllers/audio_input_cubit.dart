import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/shared/ui/ui_kit/microphone/microphone_controls_state.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/domain/enums/voice_permission_issue.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/domain/repositories/audio_repository.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'audio_input_cubit.freezed.dart';

const int _maxSeconds = 60;

@freezed
sealed class AudioInputState with _$AudioInputState {
  const AudioInputState._();

  const factory AudioInputState({
    @Default(MicrophoneControlsState.initial)
    MicrophoneControlsState controlsState,
    String? error,
    VoicePermissionIssue? permissionIssue,
    @Default(false) bool isProcessing,
    List<DetectedIngredient>? extractedIngredients,
    @Default(Duration.zero) Duration duration,
  }) = _AudioInputState;

  MicrophoneControlsState get microphoneState => controlsState;
  bool get canRecord => permissionIssue == null;

  bool get isMaxDurationReached => duration.inSeconds >= _maxSeconds;

  bool get isTimeRunningOut => duration.inSeconds >= (_maxSeconds * 0.8);
}

@injectable
class AudioInputCubit extends Cubit<AudioInputState> {
  AudioInputCubit(this._audioRepository) : super(const AudioInputState());

  final AudioRepository _audioRepository;

  Stream<double> get amplitudeStream => _audioRepository.getAmplitudeStream();

  Timer? _timer;

  int get maxSeconds => _maxSeconds;

  bool _isCancelled = false;

  Future<void> init() async {
    await _runPermissionInit();
  }

  Future<void> _runPermissionInit() async {
    if (isClosed) return;

    emit(state.copyWith(permissionIssue: null, error: null));

    final permResult = await _audioRepository.checkPermission();
    permResult.fold(
      onSuccess: (hasPermission) {
        if (isClosed) return;
        if (!hasPermission) {
          emit(
            state.copyWith(
              permissionIssue: VoicePermissionIssue.microphoneDenied,
              error: null,
            ),
          );
          return;
        }
        emit(state.copyWith(permissionIssue: null, error: null));
      },
      onError: (error, _) {
        emit(state.copyWith(error: error.toString(), permissionIssue: null));
      },
    );
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final newDuration = state.duration + const Duration(seconds: 1);

      if (newDuration.inSeconds >= _maxSeconds) {
        emit(state.copyWith(duration: const Duration(seconds: _maxSeconds)));
        _stopTimer();
        unawaited(pauseRecording());
      } else {
        emit(state.copyWith(duration: newDuration));
      }
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void _resetTimer() {
    _stopTimer();
    emit(state.copyWith(duration: Duration.zero));
  }

  Future<void> startRecording() async {
    if (state.permissionIssue != null || isClosed) {
      return emit(state.copyWith(error: 'cannot_start_recording'));
    }

    final result = await _audioRepository.startRecording();

    await result.fold(
      onSuccess: (_) async {
        emit(state.copyWith(controlsState: MicrophoneControlsState.recording));
        _startTimer();
      },
      onError: (error, _) {
        emit(
          state.copyWith(
            error: error.toString(),
            controlsState: .paused,
            permissionIssue: null,
          ),
        );
      },
    );
  }

  Future<void> pauseRecording() async {
    if (state.controlsState != .recording || isClosed) return;

    final result = await _audioRepository.pauseRecording();

    await result.fold(
      onSuccess: (_) async {
        emit(state.copyWith(controlsState: MicrophoneControlsState.paused));
        _stopTimer();
      },
      onError: (error, _) {
        emit(state.copyWith(error: error.toString(), permissionIssue: null));
      },
    );
  }

  Future<void> resumeRecording() async {
    if (state.permissionIssue != null || isClosed) {
      return;
    }

    if (!state.canRecord) {
      return emit(state.copyWith(error: 'recording_max_duration'));
    }

    final result = await _audioRepository.resumeRecording();

    await result.fold(
      onSuccess: (_) async {
        emit(state.copyWith(controlsState: MicrophoneControlsState.recording));

        _startTimer();
      },
      onError: (error, _) {
        emit(
          state.copyWith(
            error: error.toString(),
            controlsState: .paused,
            permissionIssue: null,
          ),
        );
      },
    );
  }

  Future<void> cancelRecording() async {
    if (isClosed) return;
    final result = await _audioRepository.cancelRecording();

    await result.fold(
      onSuccess: (_) async {
        emit(state.copyWith(controlsState: MicrophoneControlsState.initial));
        _resetTimer();
      },
      onError: (error, _) {
        emit(state.copyWith(error: error.toString(), permissionIssue: null));
      },
    );
  }

  void cancelRequest() {
    _isCancelled = true;
    if (!isClosed) {
      emit(state.copyWith(isProcessing: false, error: null, duration: .zero));
    }
  }

  Future<void> confirmRecord() async {
    if (isClosed) return;
    _stopTimer();

    _isCancelled = false;

    emit(
      state.copyWith(isProcessing: true, controlsState: .initial, error: null),
    );

    final stopResult = await _audioRepository.stopRecording();
    final extractResult = await stopResult.fold(
      onSuccess: (path) async {
        final recordingPath = path?.trim() ?? '';
        if (recordingPath.isEmpty) {
          return Failure<List<DetectedIngredient>>(
            Exception('recording_path_empty'),
          );
        }

        return _audioRepository.extractIngredientsFromRecording(recordingPath);
      },
      onError: (error, stackTrace) async =>
          Failure<List<DetectedIngredient>>(error, stackTrace),
    );

    extractResult.fold(
      onSuccess: (ingredients) {
        if (_isCancelled) return;

        emit(
          state.copyWith(
            isProcessing: false,
            controlsState: MicrophoneControlsState.initial,
            extractedIngredients: ingredients,
          ),
        );
        _resetTimer();
      },
      onError: (error, _) {
        emit(state.copyWith(isProcessing: false, error: error.toString()));
      },
    );
  }
}
