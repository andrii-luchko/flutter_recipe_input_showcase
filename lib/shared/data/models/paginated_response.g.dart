// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedResponse _$PaginatedResponseFromJson(Map<String, dynamic> json) =>
    _PaginatedResponse(
      dishes:
          (json['dishes'] as List<dynamic>?)
              ?.map((e) => DishDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: MetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginatedResponseToJson(_PaginatedResponse instance) =>
    <String, dynamic>{'dishes': instance.dishes, 'meta': instance.meta};

_MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) => _MetaDto(
  totalItems: _parseSafeInt(json['totalItems']),
  itemsPerPage: _parseSafeInt(json['itemsPerPage']),
  currentPage: _parseSafeInt(json['currentPage']),
  totalPages: _parseSafeInt(json['totalPages']),
);

Map<String, dynamic> _$MetaDtoToJson(_MetaDto instance) => <String, dynamic>{
  'totalItems': instance.totalItems,
  'itemsPerPage': instance.itemsPerPage,
  'currentPage': instance.currentPage,
  'totalPages': instance.totalPages,
};
