import 'dart:io';

import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/datasources/demo_recipe_data_source.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/data/service/image_service.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/domain/repositories/camera_detection_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

class IngredientPhotoDetectionNotImplementedException implements Exception {
  @override
  String toString() => 'Ingredient photo detection is not implemented yet.';
}

@Injectable(as: CameraDetectionRepository)
class CameraDetectionRepositoryImpl implements CameraDetectionRepository {
  CameraDetectionRepositoryImpl(this._remote, this._imageService);

  final DemoRecipeDataSource _remote;
  final ImageService _imageService;

  @override
  Future<Result<File?>> pickFromGallery() async {
    try {
      final xFile = await _imageService.pickImage(source: ImageSource.gallery);
      if (xFile == null) {
        return const Success(null);
      }
      return Success(File(xFile.path));
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<List<DetectedIngredient>>> detectIngredientsFromPhoto({
    required String localFilePath,
  }) async {
    try {
      final result = await _imageService.checkSizeAndCompressIfNeeded(
        File(localFilePath),
      );

      switch (result) {
        case Success(value: final file):
          final dtos = await _remote.extractIngredientsFromPhoto(file);

          final ingredients = dtos.map((dto) => dto.toDomain()).toList();
          return Success(ingredients);

        case Failure(error: final e):
          return Failure(e);
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
