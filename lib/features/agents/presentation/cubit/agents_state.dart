part of 'agents_cubit.dart';

@immutable
sealed class AgentsState {}

final class AgentsInitial extends AgentsState {}

class AgentsChangeRole extends AgentsState {}

class GetAgentsLoading extends AgentsState {}

class GetAgentsSuccess extends AgentsState {
  final List<AgentsEntity> agentsList;

  GetAgentsSuccess(this.agentsList);
}

class AgentsFilter extends AgentsState {
  final List<AgentsEntity> filteredAgentsList;

  AgentsFilter(this.filteredAgentsList);
}

class GetAgentsFailure extends AgentsState {
  final ApiErrorModel errorModel;

  GetAgentsFailure(this.errorModel);
}
