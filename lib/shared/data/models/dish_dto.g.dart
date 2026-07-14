// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DishDto _$DishDtoFromJson(Map<String, dynamic> json) => _DishDto(
  dishId: (json['dishId'] as num).toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  mainImagePath: json['mainImagePath'] as String?,
  createDate: DateTime.parse(json['createDate'] as String),
  cookingTimeMinutes: (json['cookingTimeMinutes'] as num).toInt(),
  isPublic: json['isPublic'] as bool,
  originalDishApiId: (json['originalDishApiId'] as num?)?.toInt(),
  dishCategory: DishCategoryDto.fromJson(
    json['dishCategory'] as Map<String, dynamic>,
  ),
  isEditable: json['isEditable'] as bool,
  isLiked: json['isLiked'] as bool,
  isDisliked: json['isDisliked'] as bool,
  dislikes: (json['dislikes'] as num).toInt(),
  likes: (json['likes'] as num).toInt(),
  isSaved: json['isSaved'] as bool,
  source: json['source'] as String?,
);

Map<String, dynamic> _$DishDtoToJson(_DishDto instance) => <String, dynamic>{
  'dishId': instance.dishId,
  'title': instance.title,
  'description': instance.description,
  'mainImagePath': instance.mainImagePath,
  'createDate': instance.createDate.toIso8601String(),
  'cookingTimeMinutes': instance.cookingTimeMinutes,
  'isPublic': instance.isPublic,
  'originalDishApiId': instance.originalDishApiId,
  'dishCategory': instance.dishCategory,
  'isEditable': instance.isEditable,
  'isLiked': instance.isLiked,
  'isDisliked': instance.isDisliked,
  'dislikes': instance.dislikes,
  'likes': instance.likes,
  'isSaved': instance.isSaved,
  'source': instance.source,
};

_DishCategoryDto _$DishCategoryDtoFromJson(Map<String, dynamic> json) =>
    _DishCategoryDto(
      dishCategoryId: (json['dish_category_id'] as num?)?.toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$DishCategoryDtoToJson(_DishCategoryDto instance) =>
    <String, dynamic>{
      'dish_category_id': instance.dishCategoryId,
      'name': instance.name,
    };
