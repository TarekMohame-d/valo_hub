import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

class AgentsLocalSource {

  Future<void> saveAgentToLocal(AgentsEntity agent) async {
    await HiveHelper.saveData<AgentsEntity>(
      boxName: HiveBoxes.agentsBox,
      key: agent.uuid!,
      data: agent,
    );
  }

  Future<List<AgentsEntity>> fetchAgents() async {
    List<AgentsEntity> agents = [];
    agents =
        await HiveHelper.getAllData<AgentsEntity>(boxName: HiveBoxes.agentsBox);
    return agents;
  }

  Future<bool> hasAgentsData() async {
    bool hasData = await HiveHelper.hasData<AgentsEntity>(
      boxName: HiveBoxes.agentsBox,
    );
    return hasData;
  }
}
