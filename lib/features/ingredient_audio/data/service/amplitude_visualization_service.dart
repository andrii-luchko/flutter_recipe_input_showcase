import 'dart:io';
import 'dart:math' as math;

import 'package:injectable/injectable.dart';
import 'package:record/record.dart';

@injectable
class AmplitudeVisualizationService {
  /// Record Amplitude.current is typically dBFS-like; loud speech often sits around −45…−35.
  static const double _recordMinDb = -60;
  static const double _recordMaxDb = 0;

  /// speech_to_text documents iOS as dB; Android values are less defined — adjust if needed.
  static const double _speechMinIos = -55;
  static const double _speechMaxIos = -5;

  static const double _speechMinAndroid = 0;
  static const double _speechMaxAndroid = 10;

  /// Gamma below 1 lifts mid values so bars use more of the vertical range without clipping peaks.
  static const double _displayGamma = 0.35;

  double forRecordAmplitude(Amplitude amplitude) {
    final linear =
        (amplitude.current - _recordMinDb) / (_recordMaxDb - _recordMinDb);
    return _toDisplay(linear);
  }

  double forSpeechSoundLevel(double level) {
    double min;
    double max;

    if (Platform.isAndroid) {
      min = _speechMinAndroid;
      max = _speechMaxAndroid;
    } else {
      min = _speechMinIos;
      max = _speechMaxIos;
    }

    final linear = (level - min) / (max - min);
    return _toDisplay(linear);
  }

  double _toDisplay(double linear01) {
    final clamped = linear01.clamp(0.0, 1.0);
    if (clamped <= 0) {
      return 0;
    }
    return math.pow(clamped, _displayGamma).toDouble().clamp(0.0, 1.0);
  }
}
