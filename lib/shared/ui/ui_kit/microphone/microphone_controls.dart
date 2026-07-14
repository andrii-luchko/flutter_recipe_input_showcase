import 'package:flutter/material.dart';
import 'package:flutter_recipe_input_showcase/shared/ui/ui_kit/microphone/microphone_controls_state.dart';
import '../controls/triple_controls_skeleton.dart';

class MicrophoneControls extends StatelessWidget {
  const MicrophoneControls({
    required this.state,
    required this.onStart,
    required this.onPause,
    required this.onResume,
    required this.onCancel,
    required this.onConfirm,
    super.key,
  });
  final MicrophoneControlsState state;
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onCancel;
  final VoidCallback onConfirm;
  @override
  Widget build(BuildContext context) {
    final active = state != MicrophoneControlsState.initial;
    final primary = Theme.of(context).colorScheme.primary;
    final icon = switch (state) {
      MicrophoneControlsState.initial => Icons.mic,
      MicrophoneControlsState.recording => Icons.pause,
      MicrophoneControlsState.paused => Icons.play_arrow,
    };
    final onTap = switch (state) {
      MicrophoneControlsState.initial => onStart,
      MicrophoneControlsState.recording => onPause,
      MicrophoneControlsState.paused => onResume,
    };
    return TripleControlsSkeleton(
      isExpanded: active,
      leftButton: CircularControlButton(
        icon: Icons.close,
        color: Theme.of(context).colorScheme.error,
        onPressed: active ? onCancel : null,
      ),
      rightButton: CircularControlButton(
        icon: Icons.check,
        color: Colors.green,
        foregroundColor: Colors.black,
        onPressed: active ? onConfirm : null,
      ),
      mainButton: AnimatedContainer(
        duration: Durations.short3,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: state == MicrophoneControlsState.recording
                ? primary
                : Colors.white,
            width: 5,
          ),
        ),
        child: CircularControlButton(
          icon: icon,
          color: state == MicrophoneControlsState.recording
              ? Colors.white
              : primary,
          foregroundColor: state == MicrophoneControlsState.recording
              ? primary
              : Colors.white,
          onPressed: onTap,
        ),
      ),
    );
  }
}
