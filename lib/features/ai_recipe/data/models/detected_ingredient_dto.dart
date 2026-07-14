import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/enums/ingredient_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'detected_ingredient_dto.freezed.dart';
part 'detected_ingredient_dto.g.dart';

@freezed
sealed class DetectedIngredientDto with _$DetectedIngredientDto {
  const DetectedIngredientDto._();

  const factory DetectedIngredientDto({
    required String name,
    required double count,
    @JsonKey(name: 'unit_id') required int unitId,
    @Default(1.0) double confidence,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _DetectedIngredientDto;

  factory DetectedIngredientDto.fromJson(Map<String, dynamic> json) =>
      _$DetectedIngredientDtoFromJson(json);

  DetectedIngredient toDomain() => DetectedIngredient(
    name: name,
    quantity: count,
    unit: IngredientUnit.fromId(unitId),
    confidence: confidence,
    imageUrl: imageUrl,
  );
}
