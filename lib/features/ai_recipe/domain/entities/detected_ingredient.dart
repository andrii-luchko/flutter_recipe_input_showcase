import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/enums/ingredient_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detected_ingredient.freezed.dart';

@freezed
sealed class DetectedIngredient with _$DetectedIngredient {
  const factory DetectedIngredient({
    @Default('') String name,
    @Default(0) double quantity,
    @Default(IngredientUnit.g) IngredientUnit unit,
    @Default(1.0) double confidence,
    @Default(false) bool isNew,
    String? imageUrl,
  }) = _DetectedIngredient;
}
