import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/domain/repositories/camera_detection_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'camera_input_cubit.freezed.dart';

@freezed
sealed class CameraInputState with _$CameraInputState {
  const CameraInputState._();

  const factory CameraInputState({
    String? localImagePath,
    @Default(false) bool isSubmitting,
    String? error,
    List<DetectedIngredient>? detectedIngredients,
  }) = _CameraInputState;
}

@injectable
class CameraInputCubit extends Cubit<CameraInputState> {
  CameraInputCubit(this._repository) : super(const CameraInputState());

  final CameraDetectionRepository _repository;

  bool _isCanceled = false;

  void setLocalImagePath(String path) {
    emit(
      state.copyWith(
        localImagePath: path,
        error: null,
        detectedIngredients: null,
        isSubmitting: false,
      ),
    );
  }

  void clearPhoto() {
    emit(
      state.copyWith(
        localImagePath: null,
        error: null,
        detectedIngredients: null,
        isSubmitting: false,
      ),
    );
  }

  Future<void> pickFromGallery() async {
    final result = await _repository.pickFromGallery();
    result.fold(
      onSuccess: (file) {
        if (file == null) {
          return;
        }

        emit(
          state.copyWith(
            localImagePath: file.path,
            error: null,
            detectedIngredients: null,
            isSubmitting: false,
          ),
        );
      },
      onError: (error, _) {
        emit(state.copyWith(error: error.toString()));
      },
    );
  }

  void cancelRequest() {
    _isCanceled = true;
    if (!isClosed) {
      emit(state.copyWith(isSubmitting: false, error: null));
    }
  }

  Future<void> submit() async {
    final path = state.localImagePath;
    if (path == null) {
      return;
    }

    _isCanceled = false;

    emit(state.copyWith(isSubmitting: true, error: null));

    final result = await _repository.detectIngredientsFromPhoto(
      localFilePath: path,
    );

    result.fold(
      onSuccess: (ingredients) {
        if (_isCanceled) {
          return;
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            detectedIngredients: ingredients,
            error: null,
          ),
        );
      },
      onError: (error, _) {
        emit(state.copyWith(isSubmitting: false, error: error.toString()));
      },
    );
  }

  void clearError() {
    emit(state.copyWith(error: null));
  }
}
