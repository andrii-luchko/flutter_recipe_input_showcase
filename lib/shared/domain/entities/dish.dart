import 'package:freezed_annotation/freezed_annotation.dart';
part 'dish.freezed.dart';
part 'dish.g.dart';

@freezed
sealed class Dish with _$Dish {
  const factory Dish({
    required int dishId,
    required String title,
    required String description,
    required String mainImagePath,
    required DateTime createDate,
    required int cookingTimeMinutes,
    required int? categoryId,
    required bool isLiked,
    required bool isDisliked,
    required bool isSaved,
    required int likes,
    required int dislikes,
    int? recordedAtMs,
  }) = _Dish;

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
}
