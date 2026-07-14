import 'package:flutter_recipe_input_showcase/shared/domain/entities/dish.dart';

class PaginatedResult {
  PaginatedResult({
    required this.dishes,
    required this.hasMore,
    required this.nextPage,
  });

  final List<Dish> dishes;
  final bool hasMore;
  final int nextPage;
}
