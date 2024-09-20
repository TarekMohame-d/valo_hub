import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/presentation/cubit/agents_cubit.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agent_item.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agents_roles_bloc_builder.dart';

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

class AgentWidget extends StatelessWidget {
  const AgentWidget({super.key, required this.agents});
  final List<AgentsEntity> agents;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AgentsRolesBlocBuilder(),
        verticalSpace(8),
        Expanded(
          child: CustomScrollView(
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
          ),
        ),
      ],
    );
  }
}
