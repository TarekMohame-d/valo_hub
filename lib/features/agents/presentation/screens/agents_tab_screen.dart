import 'package:flutter/material.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agents_bloc_builder.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agents_roles_bloc_builder.dart';

class AgentsTabScreen extends StatelessWidget {
  const AgentsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AgentsRolesBlocBuilder(),
        verticalSpace(8),
        const Expanded(
          child: AgentsBlocBuilder(),
        ),
      ],
    );
  }
}
