import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/enums/ingredient_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_draft.freezed.dart';

@freezed
sealed class IngredientDraft with _$IngredientDraft {
  const IngredientDraft._();

  const factory IngredientDraft({
    @Default('') String name,
    @Default('') String quantityText,
    @Default(IngredientUnit.g) IngredientUnit unit,
    @Default(1.0) double confidence,
    @Default(false) bool isNew,
  }) = _IngredientDraft;

  factory IngredientDraft.fromIngredient(DetectedIngredient ingredient) {
    final quantity = ingredient.quantity;
    final text = quantity == quantity.roundToDouble()
        ? quantity.round().toString()
        : quantity.toString();
    return IngredientDraft(
      name: ingredient.name,
      quantityText: text,
      unit: ingredient.unit,
      confidence: ingredient.confidence,
      isNew: ingredient.isNew,
    );
  }
}

extension IngredientDraftX on IngredientDraft {
  bool get isNameValid => name.trim().isNotEmpty && name.length <= 40;

  bool get isQuantityValid {
    if (unit == IngredientUnit.toTaste) return true;
    final parsed = double.tryParse(quantityText.trim());
    return parsed != null &&
        parsed.isFinite &&
        parsed > 0 &&
        quantityText.length <= 7;
  }

  Exception? get validationError {
    if (name.trim().isEmpty) return Exception('every_ingredient_needs_name');
    if (name.length > IngredientConst.maxIngTitleLength) {
      return Exception(
        // t.ai_recipe.manual_input.validation.name_length(
        //   n: IngredientConst.maxIngTitleLength,
        // ),
      );
    }
    if (quantityText.length > IngredientConst.maxAmountLength) {
      return Exception(
        // t.ai_recipe.manual_input.validation.amount_length(
        //   n: IngredientConst.maxAmountLength,
        // ),
      );
    }
    if (!isQuantityValid) return Exception('invalid_amount');
    return null;
  }
}

abstract class IngredientConst {
  static const int maxIngTitleLength = 40;
  static const int maxAmountLength = 7;
}
