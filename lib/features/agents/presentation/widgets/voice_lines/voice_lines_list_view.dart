import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';
import 'package:valo_hub/features/agents/presentation/widgets/voice_lines/voice_lines_item.dart';

class VoiceLinesListView extends StatefulWidget {
  const VoiceLinesListView({super.key, required this.voiceLines});

  final List<AgentVoiceEntity> voiceLines;

  @override
  State<VoiceLinesListView> createState() => _VoiceLinesListViewState();
}

class _VoiceLinesListViewState extends State<VoiceLinesListView> {
  final player = AudioPlayer();

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.voiceLines.length,
      itemBuilder: (context, index) => VoiceLinesItem(
        agentVoice: widget.voiceLines[index],
        player: player,
      ),
    );
  }
}
