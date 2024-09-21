import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/features/agents/presentation/cubit/agents_cubit.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agents_roles.dart';

class AgentsRolesBlocBuilder extends StatelessWidget {
  const AgentsRolesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgentsCubit, AgentsState>(
      buildWhen: (previous, current) => current is AgentsChangeRole,
      builder: (context, state) {
        return AgentsRoles(
            currentIndex: context.read<AgentsCubit>().currentRoleIndex);
      },
    );
  }
}
