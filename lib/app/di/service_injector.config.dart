// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_recipe_input_showcase/app/di/service_injector.dart'
    as _i826;
import 'package:flutter_recipe_input_showcase/features/ai_recipe/controllers/explore_ai_recipes_cubit.dart'
    as _i815;
import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/datasources/demo_recipe_data_source.dart'
    as _i368;
import 'package:flutter_recipe_input_showcase/features/ai_recipe/data/repositories/breakfast_ingredients_repository_impl.dart'
    as _i869;
import 'package:flutter_recipe_input_showcase/features/ai_recipe/domain/repositories/breakfast_ingredients_repository.dart'
    as _i96;
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/controllers/audio_input_cubit.dart'
    as _i561;
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/data/datasources/audio_datasource.dart'
    as _i508;
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/data/repositories/audio_repository_impl.dart'
    as _i61;
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/data/service/amplitude_visualization_service.dart'
    as _i721;
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/domain/repositories/audio_repository.dart'
    as _i963;
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/controllers/camera_input_cubit.dart'
    as _i753;
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/data/repositories/camera_detection_repository_impl.dart'
    as _i1030;
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/data/service/image_service.dart'
    as _i270;
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/domain/repositories/camera_detection_repository.dart'
    as _i647;
import 'package:flutter_recipe_input_showcase/features/ingredient_manual/controllers/manual_ingredients_cubit.dart'
    as _i358;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:record/record.dart' as _i1039;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final serviceModule = _$ServiceModule();
    gh.factory<_i1039.AudioRecorder>(() => serviceModule.audioRecorder());
    gh.factory<_i721.AmplitudeVisualizationService>(
      () => _i721.AmplitudeVisualizationService(),
    );
    gh.factory<_i358.ManualIngredientsCubit>(
      () => _i358.ManualIngredientsCubit(),
    );
    gh.lazySingleton<_i270.ImageService>(() => _i270.ImageServiceImpl());
    gh.factory<_i368.DemoRecipeDataSource>(
      () => const _i368.LocalDemoRecipeDataSource(),
    );
    gh.factory<_i96.BreakfastIngredientsRepository>(
      () => _i869.BreakfastIngredientsRepositoryImpl(
        gh<_i368.DemoRecipeDataSource>(),
      ),
    );
    gh.factory<_i508.AudioDataSource>(
      () => _i508.AudioDataSourceImpl(gh<_i1039.AudioRecorder>()),
    );
    gh.factory<_i647.CameraDetectionRepository>(
      () => _i1030.CameraDetectionRepositoryImpl(
        gh<_i368.DemoRecipeDataSource>(),
        gh<_i270.ImageService>(),
      ),
    );
    gh.factory<_i963.AudioRepository>(
      () => _i61.AudioRepositoryImpl(
        gh<_i508.AudioDataSource>(),
        gh<_i368.DemoRecipeDataSource>(),
        gh<_i721.AmplitudeVisualizationService>(),
      ),
    );
    gh.factory<_i815.ExploreAiRecipesCubit>(
      () => _i815.ExploreAiRecipesCubit(
        gh<_i96.BreakfastIngredientsRepository>(),
      ),
    );
    gh.factory<_i753.CameraInputCubit>(
      () => _i753.CameraInputCubit(gh<_i647.CameraDetectionRepository>()),
    );
    gh.factory<_i561.AudioInputCubit>(
      () => _i561.AudioInputCubit(gh<_i963.AudioRepository>()),
    );
    return this;
  }
}

class _$ServiceModule extends _i826.ServiceModule {}
