import 'package:valo_hub/core/networking/api_constants.dart';
import 'package:valo_hub/core/networking/api_services.dart';
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
}
