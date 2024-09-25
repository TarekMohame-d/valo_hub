import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';
import 'package:valo_hub/features/agents/domain/repository/agents_repo.dart';

class GetAgentVoiceLinesUseCase {
  final AgentsRepo agentsRepo;

  GetAgentVoiceLinesUseCase(this.agentsRepo);

  Future<ApiResult<List<AgentVoiceEntity>>> call(String sheetName) async {
    return await agentsRepo.getAgentVoiceLines(sheetName);
  }
}
