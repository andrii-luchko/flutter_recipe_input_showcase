// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $addIngredientMethodRoute,
  $cameraFlowShellRoute,
  $audioFlowShellRoute,
  $manualFlowShellRoute,
];

RouteBase get $addIngredientMethodRoute => GoRouteData.$route(
  path: '/',
  factory: $AddIngredientMethodRoute._fromState,
);

mixin $AddIngredientMethodRoute on GoRouteData {
  static AddIngredientMethodRoute _fromState(GoRouterState state) =>
      const AddIngredientMethodRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $cameraFlowShellRoute => ShellRouteData.$route(
  factory: $CameraFlowShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/camera',
      factory: $CameraDetectionRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/camera/review',
      factory: $CameraPhotoReviewRoute._fromState,
    ),
  ],
);

extension $CameraFlowShellRouteExtension on CameraFlowShellRoute {
  static CameraFlowShellRoute _fromState(GoRouterState state) =>
      const CameraFlowShellRoute();
}

mixin $CameraDetectionRoute on GoRouteData {
  static CameraDetectionRoute _fromState(GoRouterState state) =>
      const CameraDetectionRoute();

  @override
  String get location => GoRouteData.$location('/camera');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $CameraPhotoReviewRoute on GoRouteData {
  static CameraPhotoReviewRoute _fromState(GoRouterState state) =>
      const CameraPhotoReviewRoute();

  @override
  String get location => GoRouteData.$location('/camera/review');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $audioFlowShellRoute => ShellRouteData.$route(
  factory: $AudioFlowShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(path: '/audio', factory: $AudioInputRoute._fromState),
    GoRouteData.$route(
      path: '/audio/processing',
      factory: $AudioProcessingRoute._fromState,
    ),
  ],
);

extension $AudioFlowShellRouteExtension on AudioFlowShellRoute {
  static AudioFlowShellRoute _fromState(GoRouterState state) =>
      const AudioFlowShellRoute();
}

mixin $AudioInputRoute on GoRouteData {
  static AudioInputRoute _fromState(GoRouterState state) =>
      const AudioInputRoute();

  @override
  String get location => GoRouteData.$location('/audio');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AudioProcessingRoute on GoRouteData {
  static AudioProcessingRoute _fromState(GoRouterState state) =>
      const AudioProcessingRoute();

  @override
  String get location => GoRouteData.$location('/audio/processing');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $manualFlowShellRoute => ShellRouteData.$route(
  factory: $ManualFlowShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/manual',
      factory: $ManualIngredientsRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/manual/processing',
      factory: $RecipeProcessingRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/manual/results',
      factory: $RecipeResultsRoute._fromState,
    ),
  ],
);

extension $ManualFlowShellRouteExtension on ManualFlowShellRoute {
  static ManualFlowShellRoute _fromState(GoRouterState state) =>
      const ManualFlowShellRoute();
}

mixin $ManualIngredientsRoute on GoRouteData {
  static ManualIngredientsRoute _fromState(GoRouterState state) =>
      ManualIngredientsRoute($extra: state.extra as List<DetectedIngredient>?);

  ManualIngredientsRoute get _self => this as ManualIngredientsRoute;

  @override
  String get location => GoRouteData.$location('/manual');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin $RecipeProcessingRoute on GoRouteData {
  static RecipeProcessingRoute _fromState(GoRouterState state) =>
      const RecipeProcessingRoute();

  @override
  String get location => GoRouteData.$location('/manual/processing');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RecipeResultsRoute on GoRouteData {
  static RecipeResultsRoute _fromState(GoRouterState state) =>
      const RecipeResultsRoute();

  @override
  String get location => GoRouteData.$location('/manual/results');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
