import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/domain/repository/agents_repo.dart';

class GetAgentsUseCase {
  final AgentsRepo agentsRepo;

  GetAgentsUseCase(this.agentsRepo);

  Future<ApiResult<List<AgentsEntity>>> call() async {
    return await agentsRepo.getAgents();
  }

  List<AgentsEntity> filterAgents(List<AgentsEntity> agentsList, String query) {
    if (query == 'All') {
      return agentsList;
    }
    return agentsList
        .where((agent) => agent.role!.displayName!
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
  }
}
