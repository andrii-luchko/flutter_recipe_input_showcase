import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/controllers/explore_ai_recipes_cubit.dart';

class ExploreAiRecipesPage extends StatelessWidget {
  const ExploreAiRecipesPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Found recipes')),
    body: BlocBuilder<ExploreAiRecipesCubit, ExploreAiRecipesState>(
      builder: (context, state) {
        final dishes = state.pagingState.dishes;
        return ListView.builder(
          itemCount: dishes.length,
          itemBuilder: (_, index) {
            final dish = dishes[index];
            return ListTile(
              title: Text(dish.title),
              subtitle: Text(dish.description),
              trailing: Text('${dish.cookingTimeMinutes} min'),
            );
          },
        );
      },
    ),
  );
}
