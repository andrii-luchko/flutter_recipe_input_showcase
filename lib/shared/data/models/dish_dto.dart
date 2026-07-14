// ignore_for_file: always_put_required_named_parameters_first

import 'package:flutter_recipe_input_showcase/shared/domain/entities/dish.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_dto.freezed.dart';
part 'dish_dto.g.dart';

@freezed
sealed class DishDto with _$DishDto {
  const factory DishDto({
    required int dishId,
    String? title,
    String? description,
    String? mainImagePath,
    required DateTime createDate,
    required int cookingTimeMinutes,
    required bool isPublic,
    int? originalDishApiId,
    required DishCategoryDto dishCategory,
    required bool isEditable,
    required bool isLiked,
    required bool isDisliked,
    required int dislikes,
    required int likes,
    required bool isSaved,
    String? source,
  }) = _DishDto;

  factory DishDto.fromJson(Map<String, dynamic> json) =>
      _$DishDtoFromJson(json);
}

extension DishDtoX on DishDto {
  Dish toDomain() {
    return Dish(
      dishId: dishId,
      title: title ?? 'Dish #$dishId',
      description: description ?? 'Dish #$dishId',
      mainImagePath: mainImagePath ?? 'base_dish_url',
      cookingTimeMinutes: cookingTimeMinutes,
      categoryId: dishCategory.dishCategoryId,
      createDate: createDate,
      isSaved: isSaved,
      likes: likes,
      dislikes: dislikes,
      isDisliked: isDisliked,
      isLiked: isLiked,
    );
  }
}

@freezed
sealed class DishCategoryDto with _$DishCategoryDto {
  const factory DishCategoryDto({
    @JsonKey(name: 'dish_category_id') int? dishCategoryId,
    required String name,
  }) = _DishCategoryDto;

  factory DishCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$DishCategoryDtoFromJson(json);
}
