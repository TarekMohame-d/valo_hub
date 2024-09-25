import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/features/agents/presentation/cubit/agents_cubit.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agents_success.dart';

class AgentsBlocBuilder extends StatelessWidget {
  const AgentsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgentsCubit, AgentsState>(
      buildWhen: (previous, current) =>
          current is GetAgentsLoading ||
          current is GetAgentsSuccess ||
          current is AgentsFilter ||
          current is GetAgentsFailure,
      builder: (context, state) {
        switch (state) {
          case GetAgentsLoading _:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case GetAgentsSuccess _:
            return AgentWidget(
              agents: state.agentsList,
            );
          case AgentsFilter _:
            return AgentWidget(
              agents: state.filteredAgentsList,
            );
          case GetAgentsFailure _:
            return Center(
              child: Text(state.errorModel.statusMessage!),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
