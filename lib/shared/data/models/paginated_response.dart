import 'package:flutter_recipe_input_showcase/shared/data/models/dish_dto.dart';
import 'package:flutter_recipe_input_showcase/shared/domain/entities/paginated_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@freezed
sealed class PaginatedResponse with _$PaginatedResponse {
  const factory PaginatedResponse({
    @Default([]) List<DishDto> dishes,
    // ignore: always_put_required_named_parameters_first
    required MetaDto meta,
  }) = _PaginatedResponse;

  factory PaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedResponseFromJson(json);
}

@freezed
sealed class MetaDto with _$MetaDto {
  const factory MetaDto({
    @JsonKey(fromJson: _parseSafeInt) required int totalItems,
    @JsonKey(fromJson: _parseSafeInt) required int itemsPerPage,
    @JsonKey(fromJson: _parseSafeInt) required int currentPage,
    @JsonKey(fromJson: _parseSafeInt) required int totalPages,
  }) = _MetaDto;

  factory MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);
}

int _parseSafeInt(Object? json) {
  if (json is int) return json;
  if (json is String) return int.tryParse(json) ?? 0;
  if (json is num) return json.toInt();
  return 0;
}

extension PaginatedResponseX on PaginatedResponse {
  PaginatedResult toDomain(int page) {
    final domain = dishes.map((e) => e.toDomain()).toList();

    final hasMore = meta.totalPages > 0 && meta.currentPage < meta.totalPages;

    final nextPage = hasMore ? page + 1 : page;

    return PaginatedResult(
      dishes: domain,
      hasMore: hasMore,
      nextPage: nextPage,
    );
  }
}
