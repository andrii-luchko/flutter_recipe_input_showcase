// ignore_for_file: always_put_required_named_parameters_first

import 'dart:io';

import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/models/detected_ingredient_dto.dart';
import 'package:flutter_recipe_input_showcase/shared/data/models/dish_dto.dart';
import 'package:flutter_recipe_input_showcase/shared/data/models/paginated_response.dart';
import 'package:injectable/injectable.dart';

abstract interface class DemoRecipeDataSource {
  Future<List<DetectedIngredientDto>> extractIngredientsFromAudio(
    File audioFile,
  );

  Future<List<DetectedIngredientDto>> extractIngredientsFromText(
    String transcript,
  );

  Future<List<DetectedIngredientDto>> extractIngredientsFromPhoto(
    File photoFile,
  );

  Future<PaginatedResponse> submitIngredients(
    List<DetectedIngredientDto> ingredients, {
    int limit,
    required int page,
  });
}

@Injectable(as: DemoRecipeDataSource)
class LocalDemoRecipeDataSource implements DemoRecipeDataSource {
  const LocalDemoRecipeDataSource();

  static const _demoIngredients = <DetectedIngredientDto>[
    DetectedIngredientDto(name: 'Eggs', count: 2, unitId: 8),
    DetectedIngredientDto(name: 'Tomato', count: 2, unitId: 8),
    DetectedIngredientDto(name: 'Milk', count: 200, unitId: 3),
  ];

  Future<void> _simulateRecognition() =>
      Future<void>.delayed(const Duration(seconds: 1));

  @override
  Future<List<DetectedIngredientDto>> extractIngredientsFromAudio(
    File audioFile,
  ) async {
    await _simulateRecognition();
    return _demoIngredients;
  }

  @override
  Future<List<DetectedIngredientDto>> extractIngredientsFromText(
    String transcript,
  ) async {
    await _simulateRecognition();
    return _demoIngredients;
  }

  @override
  Future<List<DetectedIngredientDto>> extractIngredientsFromPhoto(
    File photoFile,
  ) async {
    await _simulateRecognition();
    return _demoIngredients;
  }

  @override
  Future<PaginatedResponse> submitIngredients(
    List<DetectedIngredientDto> ingredients, {
    required int page,
    int limit = 15,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final ingredientNames = ingredients.map((item) => item.name).join(', ');
    return PaginatedResponse(
      meta: const MetaDto(
        totalItems: 3,
        itemsPerPage: 3,
        currentPage: 1,
        totalPages: 1,
      ),
      dishes: [
        DishDto(
          dishId: 1,
          title: 'Quick $ingredientNames skillet',
          description: 'A demo recipe generated from the selected ingredients.',
          mainImagePath: '',
          createDate: DateTime.now(),
          cookingTimeMinutes: 20,
          isPublic: true,
          dishCategory: const DishCategoryDto(name: 'Breakfast'),
          isEditable: false,
          isLiked: false,
          isDisliked: false,
          dislikes: 0,
          likes: 0,
          isSaved: false,
        ),
        DishDto(
          dishId: 2,
          title: 'Roasted $ingredientNames bowl',
          description: 'A second demo recipe option.',
          mainImagePath: '',
          createDate: DateTime.now(),
          cookingTimeMinutes: 35,
          isPublic: true,
          dishCategory: const DishCategoryDto(name: 'Lunch'),
          isEditable: false,
          isLiked: false,
          isDisliked: false,
          dislikes: 0,
          likes: 0,
          isSaved: false,
        ),
      ],
    );
  }
}
