import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/datasources/demo_recipe_data_source.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/models/detected_ingredient_dto.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/repositories/breakfast_ingredients_repository.dart';
import 'package:flutter_recipe_input_showcase/shared/data/models/paginated_response.dart';
import 'package:flutter_recipe_input_showcase/shared/domain/entities/paginated_result.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BreakfastIngredientsRepository)
class BreakfastIngredientsRepositoryImpl
    implements BreakfastIngredientsRepository {
  BreakfastIngredientsRepositoryImpl(this._remote);

  final DemoRecipeDataSource _remote;

  @override
  Future<Result<PaginatedResult>> submitIngredients({
    required List<DetectedIngredient> ingredients,
    required int page,
  }) async {
    try {
      final dtos = ingredients
          .map(
            (i) => DetectedIngredientDto(
              name: i.name.trim(),
              count: i.quantity,
              unitId: i.unit.id,
              confidence: i.confidence,
            ),
          )
          .toList();
      final result = await _remote.submitIngredients(dtos, page: page);

      return Success(result.toDomain(page));
    } on Exception catch (e, st) {
      return Failure(e, st);
    }
    // ignore: avoid_catches_without_on_clauses
    catch (e, st) {
      return Failure(Exception(e.toString()), st);
    }
  }
}
