import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/networking/api_error_model.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/domain/usecases/get_agents_use_case.dart';

part 'agents_state.dart';

class AgentsCubit extends Cubit<AgentsState> {
  AgentsCubit(this._getAgentsUseCase) : super(AgentsInitial());
  final GetAgentsUseCase _getAgentsUseCase;
  List<AgentsEntity> agentsList = [];
  int currentRoleIndex = 0;

  void changeRole(int index) {
    currentRoleIndex = index;
    emit(AgentsChangeRole());
  }

  void getAgents() async {
    emit(GetAgentsLoading());
    final result = await _getAgentsUseCase.call();
    if (result.isSuccess) {
      agentsList = result.data!;
      emit(GetAgentsSuccess(agentsList));
    } else {
      emit(GetAgentsFailure(result.error!));
    }
  }
}
