import 'package:valo_hub/core/networking/api_error_handler.dart';
import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/agents/data/data_sources/agents_remote_source.dart';
import 'package:valo_hub/features/agents/data/models/agents_model.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/domain/repository/agents_repo.dart';

class AgentsReposImpl implements AgentsRepo {
  final AgentsRemoteSource _agentsRemoteSource;

  AgentsReposImpl(this._agentsRemoteSource);

  @override
  Future<ApiResult<List<AgentsEntity>>> getAgents() async {
    try {
      AgentsModel agentsModel = await _agentsRemoteSource.fetchAgents();
      List<AgentsEntity>? agentsList =
          agentsModel.agentData!.map((agent) => toAgentsEntity(agent)).toList();
      return ApiResult.success(agentsList);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
