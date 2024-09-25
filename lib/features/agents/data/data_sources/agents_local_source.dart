import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

class AgentsLocalSource {
  Future<List<AgentsEntity>> getAgents() async {
    List<AgentsEntity> agentsList = [];
    agentsList =
        await HiveHelper.getAllData<AgentsEntity>(boxName: HiveBoxes.agentsBox);
    return agentsList;
  }

  Future<void> saveToLocal<T>(T data, String key, String boxName) async {
    await HiveHelper.saveData<T>(
      boxName: boxName,
      key: key,
      data: data,
    );
  }

  Future<List<AgentVoiceEntity>> getAgentVoiceLines(String key) async {
    var data = await HiveHelper.getData<List>(
        boxName: HiveBoxes.agentsVoiceLinesBox, key: key);
    data = data!.cast<AgentVoiceEntity>();
    return data as List<AgentVoiceEntity>;
  }
}
