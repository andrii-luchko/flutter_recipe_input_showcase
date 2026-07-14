// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detected_ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetectedIngredientDto _$DetectedIngredientDtoFromJson(
  Map<String, dynamic> json,
) => _DetectedIngredientDto(
  name: json['name'] as String,
  count: (json['count'] as num).toDouble(),
  unitId: (json['unit_id'] as num).toInt(),
  confidence: (json['confidence'] as num?)?.toDouble() ?? 1.0,
  imageUrl: json['image_url'] as String?,
);

Map<String, dynamic> _$DetectedIngredientDtoToJson(
  _DetectedIngredientDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'count': instance.count,
  'unit_id': instance.unitId,
  'confidence': instance.confidence,
  'image_url': instance.imageUrl,
};
