import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

class AudioWaveformVisualizer extends StatefulWidget {
  const AudioWaveformVisualizer({
    required this.amplitudeStream,
    required this.color,
    required this.height,
    this.isPaused = false,
    super.key,
  });

  final Stream<double> amplitudeStream;
  final Color color;
  final double height;
  final bool isPaused;

  @override
  State<AudioWaveformVisualizer> createState() =>
      _AudioWaveformVisualizerState();
}

class _AudioWaveformVisualizerState extends State<AudioWaveformVisualizer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final _WaveformPhysicsEngine _engine;
  StreamSubscription<double>? _subscription;
  _WaveformLayout? _layout;

  @override
  void initState() {
    super.initState();
    _engine = _WaveformPhysicsEngine();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(_onFrame);
    if (!widget.isPaused) unawaited(_controller.repeat());
    _subscription = widget.amplitudeStream.listen(_engine.pushSample);
  }

  @override
  void didUpdateWidget(covariant AudioWaveformVisualizer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isPaused != widget.isPaused) {
      if (widget.isPaused) {
        _controller.stop();
        _engine.clearPendingSamples();
      } else {
        unawaited(_controller.repeat());
      }
    }
    if (oldWidget.amplitudeStream != widget.amplitudeStream) {
      unawaited(_subscription?.cancel());
      _subscription = widget.amplitudeStream.listen(_engine.pushSample);
    }
  }

  void _onFrame() {
    if (_layout?.barCount != null) _engine.tick();
  }

  @override
  void dispose() {
    unawaited(_subscription?.cancel());
    _controller
      ..removeListener(_onFrame)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (_, constraints) {
      final layout = _WaveformLayout.fromWidth(constraints.maxWidth);
      if (_layout != layout) {
        _layout = layout;
        _engine.resize(layout.barCount);
      }
      return RepaintBoundary(
        child: CustomPaint(
          size: Size(constraints.maxWidth, widget.height),
          painter: _WaveformPainter(
            layout: layout,
            engine: _engine,
            color: widget.color,
            repaint: _controller,
          ),
        ),
      );
    },
  );
}

@immutable
class _WaveformLayout {
  const _WaveformLayout(this.barCount, this.barWidth, this.gap);
  factory _WaveformLayout.fromWidth(double width) {
    const barWidth = 10.3, gap = 8.0;
    return _WaveformLayout(
      max(1, (width / (barWidth + gap)).floor()),
      barWidth,
      gap,
    );
  }
  final int barCount;
  final double barWidth;
  final double gap;
  double get stride => barWidth + gap;
  @override
  bool operator ==(Object other) =>
      other is _WaveformLayout &&
      other.barCount == barCount &&
      other.barWidth == barWidth &&
      other.gap == gap;
  @override
  int get hashCode => Object.hash(barCount, barWidth, gap);
}

class _WaveformPhysicsEngine {
  final _pendingSamples = Queue<double>();
  List<double> peaks = [];
  int _barCount = 0, _head = 0;
  double _targetRaw = 0, _smoothed = 0, _envelope = 0, _idlePhase = 0;

  void resize(int count) {
    if (count == _barCount) return;
    _barCount = count;
    peaks = List<double>.filled(count, .05);
    _head = count - 1;
    _pendingSamples.clear();
  }

  void clearPendingSamples() => _pendingSamples.clear();
  void pushSample(double raw) {
    while (_pendingSamples.length >= 40) {
      _pendingSamples.removeFirst();
    }
    _pendingSamples.addLast(raw.clamp(0.0, 1.0));
  }

  void tick() {
    if (_barCount == 0) return;
    if (_pendingSamples.isNotEmpty) {
      _targetRaw = _pendingSamples.removeFirst();
      _head = (_head + 1) % _barCount;
    }
    final target = _targetRaw < .025
        ? .02 + .01 * sin(_idlePhase += .13)
        : _targetRaw;
    _smoothed = .22 * target + .78 * _smoothed;
    _envelope = _smoothed >= _envelope ? _smoothed : _envelope * .93;
    peaks[_head] = _envelope.clamp(.01, 1);
  }

  double amplitudeAt(int index) => peaks[(_head + 1 + index) % _barCount];
}

class _WaveformPainter extends CustomPainter {
  _WaveformPainter({
    required this.layout,
    required this.engine,
    required this.color,
    required Listenable repaint,
  }) : super(repaint: repaint);
  final _WaveformLayout layout;
  final _WaveformPhysicsEngine engine;
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    for (var index = 0; index < layout.barCount; index++) {
      final height = (size.height * engine.amplitudeAt(index))
          .clamp(6.0, size.height)
          .toDouble();
      final edgeDistance = min(index, layout.barCount - 1 - index);
      final opacity = edgeDistance == 0
          ? .06
          : edgeDistance == 1
          ? .1
          : edgeDistance == 2
          ? .3
          : edgeDistance == 3
          ? .6
          : edgeDistance == 4
          ? .8
          : 1.0;
      paint.color = color.withValues(alpha: opacity);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            index * layout.stride,
            (size.height - height) / 2,
            layout.barWidth,
            height,
          ),
          Radius.circular(layout.barWidth / 2),
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _WaveformPainter oldDelegate) =>
      oldDelegate.layout != layout ||
      oldDelegate.engine != engine ||
      oldDelegate.color != color;
}
