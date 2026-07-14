import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

enum CameraPreviewStatus {
  loading,
  permissionDenied,
  unavailable,
  ready,
  error,
}

class CameraPreviewState {
  const CameraPreviewState({
    this.status = CameraPreviewStatus.loading,
    this.zoomMin = 1,
    this.zoomMax = 1,
    this.torchOn = false,
    this.message,
  });
  final CameraPreviewStatus status;
  final double zoomMin;
  final double zoomMax;
  final bool torchOn;
  final String? message;
  CameraPreviewState copyWith({
    CameraPreviewStatus? status,
    double? zoomMin,
    double? zoomMax,
    bool? torchOn,
    String? message,
  }) => CameraPreviewState(
    status: status ?? this.status,
    zoomMin: zoomMin ?? this.zoomMin,
    zoomMax: zoomMax ?? this.zoomMax,
    torchOn: torchOn ?? this.torchOn,
    message: message ?? this.message,
  );
}

class CameraPreviewCubit extends Cubit<CameraPreviewState> {
  CameraPreviewCubit() : super(const CameraPreviewState());
  CameraController? _controller;
  CameraController? get controller => _controller;

  Future<void> start() async {
    emit(const CameraPreviewState());
    if (!Platform.isAndroid && !Platform.isIOS) {
      emit(
        const CameraPreviewState(
          status: CameraPreviewStatus.unavailable,
          message:
              'Live camera preview is available on Android and iOS. Use the gallery on this platform.',
        ),
      );
      return;
    }
    var permission = await Permission.camera.status;
    if (!permission.isGranted) permission = await Permission.camera.request();
    if (!permission.isGranted) {
      emit(
        CameraPreviewState(
          status: CameraPreviewStatus.permissionDenied,
          message: permission.isPermanentlyDenied
              ? 'Camera access is disabled in Settings.'
              : 'Camera access is required.',
        ),
      );
      return;
    }
    await _initialize();
  }

  Future<void> _initialize() async {
    await _disposeController();
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        emit(const CameraPreviewState(status: CameraPreviewStatus.unavailable));
        return;
      }
      final camera =
          cameras
              .where((item) => item.lensDirection == CameraLensDirection.back)
              .firstOrNull ??
          cameras.first;
      final controller = CameraController(
        camera,
        ResolutionPreset.high,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.jpeg,
      );
      await controller.initialize();
      await controller.lockCaptureOrientation(DeviceOrientation.portraitUp);
      _controller = controller;
      emit(
        CameraPreviewState(
          status: CameraPreviewStatus.ready,
          zoomMin: await controller.getMinZoomLevel(),
          zoomMax: await controller.getMaxZoomLevel(),
        ),
      );
    } on Object catch (error) {
      emit(
        CameraPreviewState(
          status: CameraPreviewStatus.error,
          message: error.toString(),
        ),
      );
    }
  }

  Future<File?> capture() async {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) return null;
    try {
      return File((await controller.takePicture()).path);
    } on CameraException {
      return null;
    }
  }

  Future<void> toggleTorch() async {
    final controller = _controller;
    if (controller == null) return;
    final torchOn = !state.torchOn;
    try {
      await controller.setFlashMode(torchOn ? FlashMode.torch : FlashMode.off);
      emit(state.copyWith(torchOn: torchOn));
      // ignore: empty_catches
    } on CameraException {}
  }

  Future<void> setZoom(double zoom) async {
    final controller = _controller;
    if (controller == null) return;
    await controller.setZoomLevel(zoom.clamp(state.zoomMin, state.zoomMax));
  }

  Future<void> pauseForLifecycle() async {
    await _controller?.pausePreview();
  }

  Future<void> resumeForLifecycle() async {
    await _controller?.resumePreview();
  }

  Future<void> _disposeController() async {
    await _controller?.dispose();
    _controller = null;
  }

  @override
  Future<void> close() async {
    await _disposeController();
    return super.close();
  }
}

extension<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
