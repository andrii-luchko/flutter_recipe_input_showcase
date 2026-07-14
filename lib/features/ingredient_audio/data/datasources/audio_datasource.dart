import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:record/record.dart';

abstract interface class AudioDataSource {
  Future<bool> hasPermission({bool request = true});
  Future<void> startRecording(String path);
  Future<String?> stopRecording();
  Future<void> pauseRecording();
  Future<void> resumeRecording();
  Future<void> cancelRecording();
  Stream<Amplitude> getAmplitudeStream(Duration interval);
  Future<bool> get isRecording;
  Future<bool> get isPaused;
}

@Injectable(as: AudioDataSource)
class AudioDataSourceImpl implements AudioDataSource {
  AudioDataSourceImpl(this._recorder);

  final AudioRecorder _recorder;

  static RecordConfig get _recordConfig {
    if (Platform.isAndroid) {
      return const RecordConfig(sampleRate: 16000, numChannels: 1);
    } else {
      return const RecordConfig(
        encoder: AudioEncoder.wav,
        sampleRate: 16000,
        numChannels: 1,
      );
    }
  }

  @override
  Future<bool> hasPermission({bool request = true}) =>
      _recorder.hasPermission(request: request);

  @override
  Future<void> startRecording(String path) =>
      _recorder.start(_recordConfig, path: path);

  @override
  Future<String?> stopRecording() => _recorder.stop();

  @override
  Future<void> pauseRecording() => _recorder.pause();

  @override
  Future<void> resumeRecording() => _recorder.resume();

  @override
  Future<void> cancelRecording() => _recorder.cancel();

  @override
  Stream<Amplitude> getAmplitudeStream(Duration interval) =>
      _recorder.onAmplitudeChanged(interval);

  @override
  Future<bool> get isRecording => _recorder.isRecording();

  @override
  Future<bool> get isPaused => _recorder.isPaused();
}
