import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/domain/entities/ingredient_draft.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/enums/ingredient_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manual_ingredients_cubit.freezed.dart';

@freezed
sealed class ManualIngredientsState with _$ManualIngredientsState {
  const ManualIngredientsState._();

  const factory ManualIngredientsState({
    @Default(<int, IngredientDraft>{}) Map<int, IngredientDraft> draftsById,
    List<DetectedIngredient>? convertedIngredient,
    @Default(false) bool isSubmitting,
    String? error,

    @Default(false) bool isValidating,
    String? validationError,
    @Default(false) bool submitSucceeded,
  }) = _ManualIngredientsState;
}

@injectable
class ManualIngredientsCubit extends Cubit<ManualIngredientsState> {
  ManualIngredientsCubit() : super(const ManualIngredientsState());

  void applyInitialIngredients(List<DetectedIngredient> ingredients) {
    final base = DateTime.now().microsecondsSinceEpoch;
    final next = <int, IngredientDraft>{};
    for (var i = 0; i < ingredients.length; i++) {
      next[base + i] = IngredientDraft.fromIngredient(
        ingredients[i].copyWith(isNew: false),
      );
    }
    emit(ManualIngredientsState(draftsById: next));
  }

  void addIngredient() {
    final id = DateTime.now().microsecondsSinceEpoch;
    emit(
      state.copyWith(
        draftsById: {
          ...state.draftsById,
          id: const IngredientDraft(isNew: true),
        },
      ),
    );
  }

  void removeIngredient(int id) {
    final next = Map<int, IngredientDraft>.from(state.draftsById)..remove(id);
    emit(state.copyWith(draftsById: next));
  }

  void updateIngredientDraft(
    int id, {
    String? name,
    String? quantityText,
    IngredientUnit? unit,
  }) {
    final current = state.draftsById[id];
    if (current == null) return;

    final updated = current.copyWith(
      name: name ?? current.name,
      quantityText: quantityText ?? current.quantityText,
      unit: unit ?? current.unit,
      isNew: false,
    );

    final next = Map<int, IngredientDraft>.from(state.draftsById);

    next[id] = updated;

    emit(state.copyWith(draftsById: next));
  }

  List<DetectedIngredient>? validate() {
    emit(state.copyWith(isValidating: true, validationError: null));

    final buildResult = _ingredientsFromDrafts(state.draftsById);

    return buildResult.fold(
      onSuccess: (ingredients) {
        emit(
          state.copyWith(
            convertedIngredient: ingredients,
            validationError: null,
            isValidating: false,
          ),
        );
        return ingredients;
      },
      onError: (e, _) {
        emit(
          state.copyWith(validationError: e.toString(), isValidating: false),
        );
        return null;
      },
    );
  }
}

Result<List<DetectedIngredient>> _ingredientsFromDrafts(
  Map<int, IngredientDraft> draftsById,
) {
  if (draftsById.isEmpty) {
    return Failure(Exception('add_at_least_one'));
  }

  try {
    final ingredients = draftsById.values.map((draft) {
      final error = draft.validationError;
      if (error != null) throw error;

      return DetectedIngredient(
        name: draft.name.trim(),
        quantity: double.tryParse(draft.quantityText.trim()) ?? 0,
        unit: draft.unit,
        confidence: draft.confidence,
      );
    }).toList();

    return Success(ingredients);
  } on Exception catch (e) {
    return Failure(e);
  }
}
