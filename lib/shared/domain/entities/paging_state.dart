import 'package:flutter_recipe_input_showcase/shared/domain/entities/dish.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_state.freezed.dart';

@freezed
sealed class PagingState with _$PagingState {
  const PagingState._();
  const factory PagingState({
    @Default([]) List<Dish> dishes,
    @Default(1) int nextPage,
    @Default(false) bool hasMore,
    @Default(false) bool isInitialLoading,
    @Default(false) bool isLoadingMore,
    String? initialError,
    String? loadMoreError,
  }) = _PagingState;
}
