import 'package:flutter/material.dart';

import 'router/router.dart';

class RecipeInputShowcaseApp extends StatelessWidget {
  const RecipeInputShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seedColor = Color(0xffd5653d);
    return MaterialApp.router(
      title: 'Recipe input showcase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        scaffoldBackgroundColor: const Color(0xfffffaf7),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          isDense: true,
        ),
      ),
      routerConfig: appRouter,
    );
  }
}
