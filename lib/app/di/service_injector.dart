import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:record/record.dart';

import 'service_injector.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  const flavor = 'prod';

  const environment = (flavor == 'prod') ? Environment.prod : Environment.dev;

  getIt.init(environment: environment);
}

@module
abstract class ServiceModule {
  @factoryMethod
  AudioRecorder audioRecorder() => AudioRecorder();
}
