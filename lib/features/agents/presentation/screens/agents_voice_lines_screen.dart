import 'package:flutter/material.dart';
import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/agents/domain/usecases/get_agent_voice_lines_use_case.dart';
import 'package:valo_hub/features/agents/presentation/widgets/voice_lines/voice_success.dart';

class AgentsVoiceLinesScreen extends StatelessWidget {
  const AgentsVoiceLinesScreen({super.key, required this.agentName});

  final String agentName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getIt<GetAgentVoiceLinesUseCase>().call(agentName),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final voiceLines = snapshot.data!.data;
              if (voiceLines != null && voiceLines.isNotEmpty) {
                return VoiceSuccess(voiceLines: voiceLines);
              } else {
                return const Center(child: Text('No Voice Lines Foundddd'));
              }
            } else {
              return const Center(child: Text('No Voice Lines Found'));
            }
          },
        ),
      ),
    );
  }
}
