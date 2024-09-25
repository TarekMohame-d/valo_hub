import 'package:flutter/material.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';
import 'package:valo_hub/features/agents/presentation/widgets/voice_lines/voice_app_bar.dart';
import 'package:valo_hub/features/agents/presentation/widgets/voice_lines/voice_lines_list_view.dart';

class VoiceSuccess extends StatefulWidget {
  const VoiceSuccess({super.key, required this.voiceLines});

  final List<AgentVoiceEntity> voiceLines;

  @override
  State<VoiceSuccess> createState() => _VoiceSuccessState();
}

class _VoiceSuccessState extends State<VoiceSuccess> {
  List<AgentVoiceEntity> _filteredVoiceLines = [];

  @override
  void initState() {
    super.initState();
    _filteredVoiceLines = widget.voiceLines;
  }

  void _filterVoiceLines(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredVoiceLines = widget.voiceLines;
      });
    } else {
      setState(() {
        _filteredVoiceLines = widget.voiceLines
            .where((voiceLine) =>
                voiceLine.quotes!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          VoiceAppBar(
            onSearchChanged: _filterVoiceLines,
          ),
          verticalSpace(12),
          Expanded(child: VoiceLinesListView(voiceLines: _filteredVoiceLines))
        ],
      ),
    );
  }
}
