import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_input_showcase/app/router/router.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/controllers/audio_input_cubit.dart';
import 'package:flutter_recipe_input_showcase/shared/ui/ui_kit/microphone/microphone_controls_state.dart';
import 'package:flutter_recipe_input_showcase/features/ingredient_audio/domain/enums/voice_permission_issue.dart';
import 'package:flutter_recipe_input_showcase/shared/ui/ui_kit/microphone/audio_waveform_visualizer.dart';
import 'package:flutter_recipe_input_showcase/shared/ui/ui_kit/microphone/microphone_controls.dart';
import 'package:go_router/go_router.dart';

class AudioDetectionPage extends StatelessWidget {
  const AudioDetectionPage({super.key});
  @override
  Widget build(
    BuildContext context,
  ) => BlocBuilder<AudioInputCubit, AudioInputState>(
    builder: (context, state) {
      final cubit = context.read<AudioInputCubit>();
      final seconds = state.duration.inSeconds.toString().padLeft(2, '0');
      final title = switch (state.controlsState) {
        MicrophoneControlsState.initial => 'Dictate your ingredients',
        MicrophoneControlsState.recording => 'Listening…',
        MicrophoneControlsState.paused => 'Recording paused',
      };
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          leading: IconButton(
            tooltip: 'Back',
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Dictate ingredients'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  '00:$seconds',
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 32),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Spacer(),
                if (state.permissionIssue != null)
                  Text(
                    state.permissionIssue!.guidanceMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  )
                else if (state.controlsState != MicrophoneControlsState.initial)
                  AudioWaveformVisualizer(
                    amplitudeStream: cubit.amplitudeStream,
                    color: Theme.of(context).colorScheme.primary,
                    height: 72,
                    isPaused:
                        state.controlsState == MicrophoneControlsState.paused,
                  )
                else
                  const Icon(
                    Icons.mic_none_outlined,
                    size: 92,
                    color: Colors.white,
                  ),
                const Spacer(),
                if (state.error case final error?)
                  Text(
                    error,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                if (state.permissionIssue == null)
                  MicrophoneControls(
                    state: state.controlsState,
                    onStart: cubit.startRecording,
                    onPause: cubit.pauseRecording,
                    onResume: cubit.resumeRecording,
                    onCancel: cubit.cancelRecording,
                    onConfirm: () {
                      cubit.confirmRecord();
                      const AudioProcessingRoute().push(context);
                    },
                  ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
