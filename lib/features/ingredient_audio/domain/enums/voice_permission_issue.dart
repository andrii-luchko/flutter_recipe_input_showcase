/// Microphone / speech-recognition permission state for the voice-ingredient flow.
enum VoicePermissionIssue {
  microphoneDenied,
  microphonePermanentlyDenied,
  speechDenied,
  speechPermanentlyDenied,
}

extension VoicePermissionIssueX on VoicePermissionIssue {
  bool get isPermanent =>
      this == VoicePermissionIssue.microphonePermanentlyDenied ||
      this == VoicePermissionIssue.speechPermanentlyDenied;

  String get guidanceMessage => switch (this) {
    VoicePermissionIssue.microphoneDenied =>
      'Microphone access is needed to record your ingredients.',
    VoicePermissionIssue.microphonePermanentlyDenied =>
      'Microphone access is disabled. Enable it in Settings.',
    VoicePermissionIssue.speechDenied =>
      'Speech-recognition access is needed to process your recording.',
    VoicePermissionIssue.speechPermanentlyDenied =>
      'Speech-recognition access is disabled. Enable it in Settings.',
  };
}

/// Typed permission failure used by the audio input flow.
class VoicePermissionException implements Exception {
  const VoicePermissionException(this.issue);

  final VoicePermissionIssue issue;

  @override
  String toString() => 'VoicePermissionException($issue)';
}
