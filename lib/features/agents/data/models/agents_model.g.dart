// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoleAdapter extends TypeAdapter<Role> {
  @override
  final int typeId = 1;

  @override
  Role read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Role(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      description: fields[2] as String?,
      displayIcon: fields[3] as String?,
      assetPath: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Role obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.displayIcon)
      ..writeByte(4)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AbilitiesAdapter extends TypeAdapter<Abilities> {
  @override
  final int typeId = 2;

  @override
  Abilities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Abilities(
      slot: fields[0] as String?,
      displayName: fields[1] as String?,
      description: fields[2] as String?,
      displayIcon: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Abilities obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.displayIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentsModel _$AgentsModelFromJson(Map<String, dynamic> json) => AgentsModel(
      status: (json['status'] as num?)?.toInt(),
      agentData: (json['data'] as List<dynamic>?)
          ?.map((e) => AgentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

AgentData _$AgentDataFromJson(Map<String, dynamic> json) => AgentData(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      developerName: json['developerName'] as String?,
      characterTags: (json['characterTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      displayIcon: json['displayIcon'] as String?,
      displayIconSmall: json['displayIconSmall'] as String?,
      bustPortrait: json['bustPortrait'] as String?,
      fullPortrait: json['fullPortrait'] as String?,
      fullPortraitV2: json['fullPortraitV2'] as String?,
      killFeedPortrait: json['killfeedPortrait'] as String?,
      background: json['background'] as String?,
      backgroundGradientColors:
          (json['backgroundGradientColors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      assetPath: json['assetPath'] as String?,
      isFullPortraitRightFacing: json['isFullPortraitRightFacing'] as bool?,
      isPlayableCharacter: json['isPlayableCharacter'] as bool?,
      isAvailableForTest: json['isAvailableForTest'] as bool?,
      isBaseContent: json['isBaseContent'] as bool?,
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      recruitmentData: json['recruitmentData'] == null
          ? null
          : RecruitmentData.fromJson(
              json['recruitmentData'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      voiceLine: json['voiceLine'] as String?,
    );

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
    );

RecruitmentData _$RecruitmentDataFromJson(Map<String, dynamic> json) =>
    RecruitmentData(
      counterId: json['counterId'] as String?,
      milestoneId: json['milestoneId'] as String?,
      milestoneThreshold: (json['milestoneThreshold'] as num?)?.toInt(),
      useLevelVpCostOverride: json['useLevelVpCostOverride'] as bool?,
      levelVpCostOverride: (json['levelVpCostOverride'] as num?)?.toInt(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) => Abilities(
      slot: json['slot'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
    );
