import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/di/service_injector.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/controllers/audio_input_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/controllers/camera_input_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/controllers/explore_ai_recipes_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/controllers/manual_ingredients_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/entities/detected_ingredient.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/ui/camera/camera_preview_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/ui/pages/audio_input_page.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/ui/pages/audio_processing_page.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/ui/pages/camera_input_page.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/ui/pages/camera_photo_review_page.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/ui/pages/explore_ai_recipes_page.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/ui/pages/manual_input_page.dart';
import 'package:flutter_recipe_input_showcase/features/recipe_input/ui/pages/add_ingredient_method_page.dart';
import 'package:flutter_recipe_input_showcase/features/ai_recipe/ui/pages/search_processing_page.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final appRouter = GoRouter(routes: $appRoutes);

@TypedGoRoute<AddIngredientMethodRoute>(path: '/')
class AddIngredientMethodRoute extends GoRouteData
    with $AddIngredientMethodRoute {
  const AddIngredientMethodRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AddIngredientMethodPage();
}

@TypedShellRoute<CameraFlowShellRoute>(
  routes: [
    TypedGoRoute<CameraDetectionRoute>(path: '/camera'),
    TypedGoRoute<CameraPhotoReviewRoute>(path: '/camera/review'),
  ],
)
class CameraFlowShellRoute extends ShellRouteData {
  const CameraFlowShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<CameraInputCubit>()),
          BlocProvider(create: (_) => CameraPreviewCubit()),
        ],
        child: navigator,
      );
}

class CameraDetectionRoute extends GoRouteData with $CameraDetectionRoute {
  const CameraDetectionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CameraDetectionPage();
}

class CameraPhotoReviewRoute extends GoRouteData with $CameraPhotoReviewRoute {
  const CameraPhotoReviewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CameraPhotoReviewPage();
}

@TypedShellRoute<AudioFlowShellRoute>(
  routes: [
    TypedGoRoute<AudioInputRoute>(path: '/audio'),
    TypedGoRoute<AudioProcessingRoute>(path: '/audio/processing'),
  ],
)
class AudioFlowShellRoute extends ShellRouteData {
  const AudioFlowShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      BlocProvider(
        create: (_) => getIt<AudioInputCubit>()..init(),
        child: navigator,
      );
}

class AudioInputRoute extends GoRouteData with $AudioInputRoute {
  const AudioInputRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AudioDetectionPage();
}

class AudioProcessingRoute extends GoRouteData with $AudioProcessingRoute {
  const AudioProcessingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AudioProcessingPage();
}

@TypedShellRoute<ManualFlowShellRoute>(
  routes: [
    TypedGoRoute<ManualIngredientsRoute>(path: '/manual'),
    TypedGoRoute<RecipeProcessingRoute>(path: '/manual/processing'),
    TypedGoRoute<RecipeResultsRoute>(path: '/manual/results'),
  ],
)
class ManualFlowShellRoute extends ShellRouteData {
  const ManualFlowShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<ManualIngredientsCubit>()),
          BlocProvider(create: (_) => getIt<ExploreAiRecipesCubit>()),
        ],
        child: navigator,
      );
}

class ManualIngredientsRoute extends GoRouteData with $ManualIngredientsRoute {
  const ManualIngredientsRoute({this.$extra});

  final List<DetectedIngredient>? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      _ManualRoutePage(initialIngredients: $extra);
}

class RecipeProcessingRoute extends GoRouteData with $RecipeProcessingRoute {
  const RecipeProcessingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SearchProcessingPage();
}

class RecipeResultsRoute extends GoRouteData with $RecipeResultsRoute {
  const RecipeResultsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ExploreAiRecipesPage();
}

class _ManualRoutePage extends StatefulWidget {
  const _ManualRoutePage({this.initialIngredients});

  final List<DetectedIngredient>? initialIngredients;

  @override
  State<_ManualRoutePage> createState() => _ManualRoutePageState();
}

class _ManualRoutePageState extends State<_ManualRoutePage> {
  @override
  void initState() {
    super.initState();
    final cubit = context.read<ManualIngredientsCubit>();
    final ingredients = widget.initialIngredients;
    if (ingredients != null) {
      cubit.applyInitialIngredients(ingredients);
    } else if (cubit.state.draftsById.isEmpty) {
      cubit.addIngredient();
    }
  }

  @override
  Widget build(BuildContext context) => const ManualMethodPage();
}
