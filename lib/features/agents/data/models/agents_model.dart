import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

part 'agents_model.g.dart';

@JsonSerializable()
class AgentsModel {
  int? status;
  @JsonKey(name: 'data')
  List<AgentData>? agentData;

  AgentsModel({
    this.status,
    this.agentData,
  });

  factory AgentsModel.fromJson(Map<String, dynamic> json) =>
      _$AgentsModelFromJson(json);
}

@JsonSerializable()
class AgentData {
  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  List<String>? characterTags;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  @JsonKey(name: 'killfeedPortrait')
  String? killFeedPortrait;
  String? background;
  List<String>? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  Role? role;
  RecruitmentData? recruitmentData;
  List<Abilities>? abilities;
  String? voiceLine;

  AgentData({
    this.uuid,
    this.displayName,
    this.description,
    this.developerName,
    this.characterTags,
    this.displayIcon,
    this.displayIconSmall,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.killFeedPortrait,
    this.background,
    this.backgroundGradientColors,
    this.assetPath,
    this.isFullPortraitRightFacing,
    this.isPlayableCharacter,
    this.isAvailableForTest,
    this.isBaseContent,
    this.role,
    this.recruitmentData,
    this.abilities,
    this.voiceLine,
  });

  factory AgentData.fromJson(Map<String, dynamic> json) =>
      _$AgentDataFromJson(json);
}

@JsonSerializable()
class Role {
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;

  Role({
    this.uuid,
    this.displayName,
    this.description,
    this.displayIcon,
    this.assetPath,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@JsonSerializable()
class RecruitmentData {
  String? counterId;
  String? milestoneId;
  int? milestoneThreshold;
  bool? useLevelVpCostOverride;
  int? levelVpCostOverride;
  String? startDate;
  String? endDate;

  RecruitmentData({
    this.counterId,
    this.milestoneId,
    this.milestoneThreshold,
    this.useLevelVpCostOverride,
    this.levelVpCostOverride,
    this.startDate,
    this.endDate,
  });

  factory RecruitmentData.fromJson(Map<String, dynamic> json) =>
      _$RecruitmentDataFromJson(json);
}

@JsonSerializable()
class Abilities {
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  Abilities({
    this.slot,
    this.displayName,
    this.description,
    this.displayIcon,
  });

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);
}

AgentsEntity toAgentsEntity(AgentData agentData) {
  return AgentsEntity(
    uuid: agentData.uuid,
    displayName: agentData.displayName,
    description: agentData.description,
    displayIcon: agentData.displayIcon,
    fullPortrait: agentData.fullPortrait,
    killFeedPortrait: agentData.killFeedPortrait,
    background: agentData.background,
    backgroundGradientColors: agentData.backgroundGradientColors,
    role: agentData.role,
    abilities: agentData.abilities,
  );
}
