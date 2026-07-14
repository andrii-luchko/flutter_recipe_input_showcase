import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/router/router.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/controllers/explore_ai_recipes_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/controllers/manual_ingredients_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/ui/widgets/ingredient_editor.dart';
import 'package:go_router/go_router.dart';

class ManualMethodPage extends StatelessWidget {
  const ManualMethodPage({super.key});
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ManualIngredientsCubit, ManualIngredientsState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            leading: IconButton(
              tooltip: 'Back',
              onPressed: () => GoRouter.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text('Add ingredients'),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    for (final entry in state.draftsById.entries)
                      IngredientEditor(id: entry.key, draft: entry.value),
                    TextButton.icon(
                      onPressed: context
                          .read<ManualIngredientsCubit>()
                          .addIngredient,
                      icon: const Icon(Icons.add),
                      label: const Text('Add ingredient'),
                    ),
                    if (state.validationError case final error?) Text(error),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      final ingredients = context
                          .read<ManualIngredientsCubit>()
                          .validate();
                      if (ingredients != null) {
                        context
                            .read<ExploreAiRecipesCubit>()
                            .fetchInitialRecipes(ingredients);
                        const RecipeProcessingRoute().push(context);
                      }
                    },
                    child: const Text('Find recipes'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
