enum CookingMethod { camera, audio, manual }

extension CookingMethodX on CookingMethod {
  String get label {
    return switch (this) {
      CookingMethod.camera => 'Use camera',
      CookingMethod.audio => 'Use voice',
      CookingMethod.manual => 'Add manually',
    };
  }

  String get description {
    return switch (this) {
      CookingMethod.camera => 'Take a photo of your ingredients.',
      CookingMethod.audio => 'Record what you have in your kitchen.',
      CookingMethod.manual => 'Enter ingredients and quantities yourself.',
    };
  }

  String get featureKey {
    return switch (this) {
      CookingMethod.camera => 'ai_image_searches',
      CookingMethod.audio => 'ai_transcription_searches',
      CookingMethod.manual => '',
    };
  }
}
