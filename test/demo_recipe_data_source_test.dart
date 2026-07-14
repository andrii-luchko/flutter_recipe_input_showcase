import 'dart:io';

import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/datasources/demo_recipe_data_source.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/models/detected_ingredient_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const dataSource = LocalDemoRecipeDataSource();

  test('returns demo ingredients for a captured photo', () async {
    final ingredients = await dataSource.extractIngredientsFromPhoto(
      File('unused-in-demo.jpg'),
    );

    expect(ingredients, isNotEmpty);
    expect(ingredients.first, isA<DetectedIngredientDto>());
  });

  test('creates recipes from the submitted ingredient list', () async {
    final result = await dataSource.submitIngredients(const [
      DetectedIngredientDto(name: 'Eggs', count: 2, unitId: 8),
    ], page: 1);

    expect(result.dishes, isNotEmpty);
    expect(result.dishes.first.title, contains('Eggs'));
  });
}
