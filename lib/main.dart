import 'package:flutter/widgets.dart';

import 'app/app.dart';
import 'app/di/service_injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const RecipeInputShowcaseApp());
}
