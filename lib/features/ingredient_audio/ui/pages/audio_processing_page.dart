import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/router/router.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/controllers/audio_input_cubit.dart';
import 'package:go_router/go_router.dart';

class AudioProcessingPage extends StatelessWidget {
  const AudioProcessingPage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<AudioInputCubit, AudioInputState>(
        listener: (context, state) {
          final ingredients = state.extractedIngredients;
          if (!state.isProcessing && ingredients != null) {
            ManualIngredientsRoute($extra: ingredients).push(context);
          }
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            leading: IconButton(
              tooltip: 'Back',
              onPressed: () => GoRouter.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: state.error == null
                  ? const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 20),
                        Text(
                          'Extracting ingredients from your recording…',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(state.error!, textAlign: TextAlign.center),
                        const SizedBox(height: 16),
                        FilledButton(
                          onPressed: context
                              .read<AudioInputCubit>()
                              .confirmRecord,
                          child: const Text('Try again'),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      );
}
