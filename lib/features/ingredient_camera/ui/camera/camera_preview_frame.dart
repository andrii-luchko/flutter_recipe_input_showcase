import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'camera_preview_cubit.dart';

class CameraPreviewFrame extends StatefulWidget {
  const CameraPreviewFrame({super.key});
  @override
  State<CameraPreviewFrame> createState() => _CameraPreviewFrameState();
}

class _CameraPreviewFrameState extends State<CameraPreviewFrame>
    with WidgetsBindingObserver {
  double _baseZoom = 1;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(context.read<CameraPreviewCubit>().start());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final cubit = context.read<CameraPreviewCubit>();
    if (state == AppLifecycleState.paused) unawaited(cubit.pauseForLifecycle());
    if (state == AppLifecycleState.resumed) {
      unawaited(cubit.resumeForLifecycle());
    }
  }

  @override
  Widget build(BuildContext context) => AspectRatio(
    aspectRatio: 1,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BlocBuilder<CameraPreviewCubit, CameraPreviewState>(
        builder: (_, state) {
          final controller = context.read<CameraPreviewCubit>().controller;
          if (state.status != CameraPreviewStatus.ready || controller == null) {
            return ColoredBox(
              color: Colors.black87,
              child: Center(
                child: Text(
                  state.message ?? 'Preparing camera…',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          }
          return GestureDetector(
            onScaleStart: (_) => _baseZoom = state.zoomMin,
            onScaleUpdate: (details) => unawaited(
              context.read<CameraPreviewCubit>().setZoom(
                _baseZoom * details.scale,
              ),
            ),
            child: CameraPreview(controller),
          );
        },
      ),
    ),
  );
}
