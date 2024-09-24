import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agent_item.dart';

class AgentWidget extends StatelessWidget {
  const AgentWidget({super.key, required this.agents});
  final List<AgentsEntity> agents;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid.builder(
          itemCount: agents.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2 / 3.2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8.0.h),
              child: AgentsItem(
                agent: agents[index],
              ),
            );
          },
        ),
      ],
    );
  }
}
