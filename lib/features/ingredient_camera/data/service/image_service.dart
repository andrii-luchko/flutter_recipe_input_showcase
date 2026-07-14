import 'dart:io';

import 'package:flutter_recipe_input_showcase/app/helpers/result.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

abstract interface class ImageService {
  Future<File?> pickImage({required ImageSource source});
  Future<bool> checkSizeLimits(File file);

  Future<Result<File>> checkSizeAndCompressIfNeeded(File file);
}

@LazySingleton(as: ImageService)
class ImageServiceImpl implements ImageService {
  final ImagePicker _picker = ImagePicker();

  static const int maxFileSize = 4 * 1024 * 1024;
  static const int targetQuality = 90;
  static const double maxDimensionH = 1080;
  static const double maxDimensionW = 1920;
  @override
  Future<File?> pickImage({required ImageSource source}) async {
    final pickedFile = await _picker.pickImage(
      source: source,
      maxWidth: maxDimensionW,
      maxHeight: maxDimensionH,
      imageQuality: targetQuality,
      requestFullMetadata: false,
    );

    if (pickedFile == null) return null;

    final file = File(pickedFile.path);
    return file;
  }

  @override
  Future<bool> checkSizeLimits(File file) async {
    final size = await file.length();
    return size > maxFileSize;
  }

  @override
  Future<Result<File>> checkSizeAndCompressIfNeeded(File file) async {
    var fileToUpload = file;

    if (!fileToUpload.existsSync()) {
      return Failure(Exception('File not found'));
    }

    if (await fileToUpload.length() == 0) {
      return Failure(Exception('Image file is empty'));
    }

    if (await checkSizeLimits(fileToUpload)) {
      return Failure(Exception('Image file too large'));
    }

    return Success(fileToUpload);
  }
}
