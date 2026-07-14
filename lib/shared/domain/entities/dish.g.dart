// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Dish _$DishFromJson(Map<String, dynamic> json) => _Dish(
  dishId: (json['dishId'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  mainImagePath: json['mainImagePath'] as String,
  createDate: DateTime.parse(json['createDate'] as String),
  cookingTimeMinutes: (json['cookingTimeMinutes'] as num).toInt(),
  categoryId: (json['categoryId'] as num?)?.toInt(),
  isLiked: json['isLiked'] as bool,
  isDisliked: json['isDisliked'] as bool,
  isSaved: json['isSaved'] as bool,
  likes: (json['likes'] as num).toInt(),
  dislikes: (json['dislikes'] as num).toInt(),
  recordedAtMs: (json['recordedAtMs'] as num?)?.toInt(),
);

Map<String, dynamic> _$DishToJson(_Dish instance) => <String, dynamic>{
  'dishId': instance.dishId,
  'title': instance.title,
  'description': instance.description,
  'mainImagePath': instance.mainImagePath,
  'createDate': instance.createDate.toIso8601String(),
  'cookingTimeMinutes': instance.cookingTimeMinutes,
  'categoryId': instance.categoryId,
  'isLiked': instance.isLiked,
  'isDisliked': instance.isDisliked,
  'isSaved': instance.isSaved,
  'likes': instance.likes,
  'dislikes': instance.dislikes,
  'recordedAtMs': instance.recordedAtMs,
};
