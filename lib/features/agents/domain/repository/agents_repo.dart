import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

abstract interface class AgentsRepo {
  Future<ApiResult<List<AgentsEntity>>> getAgents();
}