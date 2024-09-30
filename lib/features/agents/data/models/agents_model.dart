import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

part 'agents_model.g.dart';

@JsonSerializable()
class AgentsModel {
  final int? status;
  @JsonKey(name: 'data')
  final List<AgentData>? agentData;

  AgentsModel({
    this.status,
    this.agentData,
  });

  factory AgentsModel.fromJson(Map<String, dynamic> json) =>
      _$AgentsModelFromJson(json);
}

@JsonSerializable()
class AgentData {
  final String? uuid;
  final String? displayName;
  final String? description;
  final String? developerName;
  final List<String>? characterTags;
  final String? displayIcon;
  final String? displayIconSmall;
  final String? bustPortrait;
  final String? fullPortrait;
  final String? fullPortraitV2;
  @JsonKey(name: 'killfeedPortrait')
  final String? killFeedPortrait;
  final String? background;
  final List<String>? backgroundGradientColors;
  final String? assetPath;
  final bool? isFullPortraitRightFacing;
  final bool? isPlayableCharacter;
  final bool? isAvailableForTest;
  final bool? isBaseContent;
  final Role? role;
  final RecruitmentData? recruitmentData;
  final List<Abilities>? abilities;
  final String? voiceLine;

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

@HiveType(typeId: 1)
@JsonSerializable()
class Role {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final String? displayIcon;
  @HiveField(4)
  final String? assetPath;

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
  final String? counterId;
  final String? milestoneId;
  final int? milestoneThreshold;
  final bool? useLevelVpCostOverride;
  final int? levelVpCostOverride;
  final String? startDate;
  final String? endDate;

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

@HiveType(typeId: 2)
@JsonSerializable()
class Abilities {
  @HiveField(0)
  final String? slot;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final String? displayIcon;

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
