import 'package:valo_hub/core/networking/api_constants.dart';
import 'package:valo_hub/core/networking/api_services.dart';
import 'package:valo_hub/features/agents/data/models/agent_voice_line_model.dart';
import 'package:valo_hub/features/agents/data/models/agents_model.dart';

class AgentsRemoteSource {
  final ApiService _apiService;
  AgentsRemoteSource(this._apiService);
  Future<AgentsModel> fetchAgents() async {
    final response = await _apiService.get(
      baseUrl: ApiConstants.valorantAPIbaseUrl,
      endPoint: ApiConstants.agentsEndPoint,
      queryParameters: {
        'isPlayableCharacter': true,
      },
    );

    return AgentsModel.fromJson(response);
  }

  Future<AgentVoiceLineModel> fetchAgentVoiceLines(String sheetName) async {
    final response = await _apiService.get(
      baseUrl: ApiConstants.voiceLinesBaseUrl,
      endPoint: ApiConstants.agentsVoiceEndPoint,
      queryParameters: {
        'sheet': sheetName,
      },
    );

    return AgentVoiceLineModel.fromJson(response);
  }
}
