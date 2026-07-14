import 'dart:io';

import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';

/// Ingredient capture from a photo: gallery pick now; upload and detection later.
abstract class CameraDetectionRepository {
  Future<Result<File?>> pickFromGallery();

  /// Uploads the local image and returns detected ingredients. Stub until API exists.
  Future<Result<List<DetectedIngredient>>> detectIngredientsFromPhoto({
    required String localFilePath,
  });
}
