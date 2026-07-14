import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/router/router.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/controllers/camera_input_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/ui/camera/camera_preview_cubit.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_camera/ui/camera/camera_preview_frame.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class CameraDetectionPage extends StatefulWidget {
  const CameraDetectionPage({super.key});

  @override
  State<CameraDetectionPage> createState() => _CameraDetectionPageState();
}

class _CameraDetectionPageState extends State<CameraDetectionPage> {
  final _picker = ImagePicker();

  Future<void> _capture() async {
    final photo = await context.read<CameraPreviewCubit>().capture();
    if (!mounted || photo == null) return;
    context.read<CameraInputCubit>().setLocalImagePath(photo.path);
    _openReview();
  }

  Future<void> _pickFromGallery() async {
    final photo = await _picker.pickImage(
      source: ImageSource.gallery,
      requestFullMetadata: false,
    );
    if (!mounted || photo == null) return;
    context.read<CameraInputCubit>().setLocalImagePath(photo.path);
    _openReview();
  }

  void _openReview() {
    const CameraPhotoReviewRoute().push(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      leading: IconButton(
        tooltip: 'Back',
        onPressed: () => GoRouter.of(context).pop(),
        icon: const Icon(Icons.arrow_back),
      ),
      title: const Text('Take a photo'),
    ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Make sure every ingredient is visible.',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Expanded(child: CameraPreviewFrame()),
            const SizedBox(height: 24),
            Row(
              children: [
                IconButton.filledTonal(
                  onPressed: () =>
                      context.read<CameraPreviewCubit>().toggleTorch(),
                  icon: const Icon(Icons.flash_on_outlined),
                ),
                const Spacer(),
                IconButton.filled(
                  onPressed: _capture,
                  iconSize: 36,
                  style: IconButton.styleFrom(minimumSize: const Size(72, 72)),
                  icon: const Icon(Icons.camera_alt),
                ),
                const Spacer(),
                IconButton.filledTonal(
                  onPressed: _pickFromGallery,
                  icon: const Icon(Icons.photo_library_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
