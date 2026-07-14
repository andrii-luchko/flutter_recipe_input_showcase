import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/router/router.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/controllers/explore_ai_recipes_cubit.dart';

class SearchProcessingPage extends StatelessWidget {
  const SearchProcessingPage({super.key});
  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ExploreAiRecipesCubit, ExploreAiRecipesState>(
        listener: (context, state) {
          final page = state.pagingState;
          if (!page.isInitialLoading &&
              page.initialError == null &&
              page.dishes.isNotEmpty) {
            const RecipeResultsRoute().pushReplacement(context);
          }
        },
        builder: (context, state) {
          final page = state.pagingState;
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: page.initialError == null
                  ? const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 20),
                        Text('Finding recipes…'),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(page.initialError!),
                        FilledButton(
                          onPressed: context
                              .read<ExploreAiRecipesCubit>()
                              .retry,
                          child: const Text('Try again'),
                        ),
                      ],
                    ),
            ),
          );
        },
      );
}
