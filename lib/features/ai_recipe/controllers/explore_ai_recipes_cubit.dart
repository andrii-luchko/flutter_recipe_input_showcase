import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/repositories/breakfast_ingredients_repository.dart';
import 'package:flutter_recipe_input_showcase/shared/domain/entities/paging_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'explore_ai_recipes_cubit.freezed.dart';

@freezed
sealed class ExploreAiRecipesState with _$ExploreAiRecipesState {
  const ExploreAiRecipesState._();
  const factory ExploreAiRecipesState({
    @Default([]) List<DetectedIngredient> ingredients,
    @Default(PagingState()) PagingState pagingState,
  }) = _ExploreAiRecipesState;
}

@injectable
class ExploreAiRecipesCubit extends Cubit<ExploreAiRecipesState> {
  ExploreAiRecipesCubit(this._repository)
    : super(const ExploreAiRecipesState());

  final BreakfastIngredientsRepository _repository;

  bool _isCanceled = false;

  Future<void> retry() async {
    await fetchInitialRecipes(state.ingredients);
  }

  void cancelRequest() {
    _isCanceled = true;
    if (!isClosed) {
      emit(
        state.copyWith(
          pagingState: state.pagingState.copyWith(
            isInitialLoading: false,
            initialError: null,
          ),
        ),
      );
    }
  }

  Future<void> fetchInitialRecipes(List<DetectedIngredient> ingredients) async {
    if (state.pagingState.isInitialLoading) {
      return;
    }

    _isCanceled = false;

    emit(
      state.copyWith(
        ingredients: ingredients,
        pagingState: const PagingState(isInitialLoading: true),
      ),
    );

    final result = await _repository.submitIngredients(
      ingredients: ingredients,
      page: 1,
    );

    result.fold(
      onSuccess: (response) {
        if (_isCanceled) {
          return;
        }

        emit(
          state.copyWith(
            pagingState: PagingState(
              dishes: response.dishes,
              nextPage: response.nextPage,
              hasMore: response.hasMore,
            ),
          ),
        );
      },
      onError: (error, stackTrace) {
        emit(
          state.copyWith(
            pagingState: PagingState(initialError: error.toString()),
          ),
        );
      },
    );
  }

  Future<void> loadMore() async {
    final ingredients = state.ingredients;
    final pagedState = state.pagingState;

    if (ingredients.isEmpty || pagedState.dishes.isEmpty) return;

    if (!pagedState.hasMore ||
        pagedState.isLoadingMore ||
        pagedState.isInitialLoading) {
      return;
    }

    emit(
      state.copyWith(
        pagingState: pagedState.copyWith(
          isLoadingMore: true,
          loadMoreError: null,
        ),
      ),
    );

    final result = await _repository.submitIngredients(
      ingredients: ingredients,
      page: pagedState.nextPage,
    );

    result.fold(
      onSuccess: (response) {
        final current = state.pagingState;

        emit(
          state.copyWith(
            pagingState: current.copyWith(
              dishes: [...current.dishes, ...response.dishes],
              nextPage: response.nextPage,
              hasMore: response.hasMore,
              isLoadingMore: false,
              loadMoreError: null,
            ),
          ),
        );
      },
      onError: (error, _) {
        final current = state.pagingState;

        emit(
          state.copyWith(
            pagingState: current.copyWith(
              isLoadingMore: false,
              loadMoreError: error.toString(),
            ),
          ),
        );
      },
    );
  }
}
