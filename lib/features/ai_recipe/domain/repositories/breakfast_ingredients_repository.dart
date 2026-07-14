import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/shared/domain/entities/paginated_result.dart';

abstract interface class BreakfastIngredientsRepository {
  Future<Result<PaginatedResult>> submitIngredients({
    required List<DetectedIngredient> ingredients,
    required int page,
  });
}
