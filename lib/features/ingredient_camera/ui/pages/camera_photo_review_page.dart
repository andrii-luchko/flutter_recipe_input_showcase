import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/router/router.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/controllers/camera_input_cubit.dart';
import 'package:go_router/go_router.dart';

class CameraPhotoReviewPage extends StatelessWidget {
  const CameraPhotoReviewPage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<CameraInputCubit, CameraInputState>(
        listener: (context, state) {
          if (state.detectedIngredients case final ingredients?) {
            ManualIngredientsRoute($extra: ingredients).push(context);
          }
        },
        builder: (context, state) {
          final imagePath = state.localImagePath;
          if (imagePath == null) {
            return const Scaffold(
              body: Center(child: Text('Photo could not be loaded.')),
            );
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                tooltip: 'Back',
                onPressed: () => GoRouter.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              title: Text(
                state.isSubmitting ? 'Scanning ingredients' : 'Use this photo?',
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(File(imagePath), fit: BoxFit.cover),
                    ),
                  ),
                  if (state.error case final error?)
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        error,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: state.isSubmitting
                        ? null
                        : context.read<CameraInputCubit>().submit,
                    child: Text(
                      state.isSubmitting ? 'Scanning…' : 'Scan ingredients',
                    ),
                  ),
                  TextButton(
                    onPressed: state.isSubmitting
                        ? null
                        : () {
                            context.read<CameraInputCubit>().clearPhoto();
                            GoRouter.of(context).pop();
                          },
                    child: const Text('Retake'),
                  ),
                ],
              ),
            ),
          );
        },
      );
}
