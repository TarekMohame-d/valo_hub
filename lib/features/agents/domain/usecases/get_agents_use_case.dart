import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/domain/repository/agents_repo.dart';

class GetAgentsUseCase {
  final AgentsRepo agentsRepo;

  GetAgentsUseCase(this.agentsRepo);

  Future<ApiResult<List<AgentsEntity>>> call() async{
    return await agentsRepo.getAgents();
  }
}
