import 'dart:developer';

import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/data_expiry_handler.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/core/networking/api_error_handler.dart';
import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/agents/data/data_sources/agents_local_source.dart';
import 'package:valo_hub/features/agents/data/data_sources/agents_remote_source.dart';
import 'package:valo_hub/features/agents/data/models/agent_voice_line_model.dart';
import 'package:valo_hub/features/agents/data/models/agents_model.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/domain/repository/agents_repo.dart';

class AgentsReposImpl implements AgentsRepo {
  final AgentsRemoteSource _agentsRemoteSource;
  final AgentsLocalSource _agentsLocalSource;

  AgentsReposImpl(
    this._agentsRemoteSource,
    this._agentsLocalSource,
  );

  @override
  Future<ApiResult<List<AgentsEntity>>> getAgents() async {
    try {
      List<AgentsEntity> agentsList;

      if (!await DataExpiryHandler.isDataExpired(
          SharedPrefKeys.agentDBExpiration)) {
        agentsList = await _agentsLocalSource.getAgents();
        if (!agentsList.isNullOrEmpty()) {
          log('AgentsReposImpl : data has been fetched from local storage');
          return ApiResult.success(agentsList);
        }
      }

      AgentsModel agentsModel = await _agentsRemoteSource.fetchAgents();
      agentsList =
          agentsModel.agentData!.map((agent) => toAgentsEntity(agent)).toList();

      for (var agent in agentsList) {
        await _agentsLocalSource.saveToLocal<AgentsEntity>(
            agent, agent.uuid!, HiveBoxes.agentsBox);
      }
      await DataExpiryHandler.updateLastUpdatedDate(
          SharedPrefKeys.agentDBExpiration);
      log('AgentsReposImpl: data has been fetched from API and saved to local storage');

      return ApiResult.success(agentsList);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<List<AgentVoiceEntity>>> getAgentVoiceLines(
      String sheetName) async {
    try {
      List<AgentVoiceEntity> voiceLines;
      if (await HiveHelper.hasKey<List>(
          boxName: HiveBoxes.agentsVoiceLinesBox, key: sheetName)) {
        if (!await DataExpiryHandler.isDataExpired(
            SharedPrefKeys.agentVoiceDBExpiration)) {
          voiceLines = await _agentsLocalSource.getAgentVoiceLines(sheetName);
          if (!voiceLines.isNullOrEmpty()) {
            log('AgentsReposImpl : Voices has been fetched from local storage');
            return ApiResult.success(voiceLines);
          }
        }
      }

      AgentVoiceLineModel voiceLinesModel =
          await _agentsRemoteSource.fetchAgentVoiceLines(sheetName);
      voiceLines = voiceLinesModel.voices!
          .map((agent) => toAgentVoiceEntity(agent))
          .toList();

      await _agentsLocalSource.saveToLocal<List>(
        voiceLines,
        sheetName,
        HiveBoxes.agentsVoiceLinesBox,
      );

      await DataExpiryHandler.updateLastUpdatedDate(
          SharedPrefKeys.agentVoiceDBExpiration);
      log('AgentsReposImpl: voices has been fetched from API and saved to local storage');
      return ApiResult.success(voiceLines);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
