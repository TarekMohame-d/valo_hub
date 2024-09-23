import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agent_abilities_sheet.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agent_details_app_bar.dart';

class AgentDetailsScreen extends StatelessWidget {
  const AgentDetailsScreen({super.key, required this.agent});

  final AgentsEntity agent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 0,
              child: CachedNetworkImage(
                imageUrl: agent.fullPortrait!,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AgentAbilitiesSheet(
                agent: agent,
              ),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: AgentDetailsAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
