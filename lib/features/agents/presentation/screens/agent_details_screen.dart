import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/functions/extract_color.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/presentation/widgets/details/agent_abilities_sheet.dart';
import 'package:valo_hub/features/agents/presentation/widgets/details/agent_details_app_bar.dart';

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
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: getBackGroundColor(
                    agent.backgroundGradientColors!,
                    opacity: 0.7,
                  ),
                  begin: const FractionalOffset(0.0, 1.0),
                  end: const FractionalOffset(1.0, 0.0),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: -70.w,
              child: CachedNetworkImage(
                imageUrl: agent.background!,
                height: MediaQuery.of(context).size.height * 0.7,
                memCacheHeight: (MediaQuery.of(context).size.height *
                        0.7 *
                        MediaQuery.of(context).devicePixelRatio)
                    .round(),
              ),
            ),
            Positioned(
              bottom: 0,
              child: CachedNetworkImage(
                imageUrl: agent.fullPortrait!,
                height: MediaQuery.of(context).size.height,
                memCacheHeight: (MediaQuery.of(context).size.height *
                        MediaQuery.of(context).devicePixelRatio)
                    .round(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AgentAbilitiesSheet(
                agent: agent,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: AgentDetailsAppBar(
                agentName: agent.displayName!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
