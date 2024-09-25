// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_voice_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgentVoiceEntityAdapter extends TypeAdapter<AgentVoiceEntity> {
  @override
  final int typeId = 3;

  @override
  AgentVoiceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AgentVoiceEntity(
      quotes: fields[0] as String?,
      audioLink: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AgentVoiceEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.quotes)
      ..writeByte(1)
      ..write(obj.audioLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgentVoiceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
