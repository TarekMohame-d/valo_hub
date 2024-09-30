// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';

part 'agent_voice_line_model.g.dart';

@JsonSerializable()
class AgentVoiceLineModel {
  final List<AgentVoice>? voices;

  AgentVoiceLineModel({
    this.voices,
  });

  factory AgentVoiceLineModel.fromJson(Map<String, dynamic> json) =>
      _$AgentVoiceLineModelFromJson(json);
}

@JsonSerializable()
class AgentVoice {
  final String? quotes;
  @JsonKey(name: 'audio_links')
  final String? audioLink;

  AgentVoice({
    this.quotes,
    this.audioLink,
  });

  factory AgentVoice.fromJson(Map<String, dynamic> json) =>
      _$AgentVoiceFromJson(json);
}

AgentVoiceEntity toAgentVoiceEntity(AgentVoice voice) =>
    AgentVoiceEntity(
      quotes: voice.quotes,
      audioLink: voice.audioLink,
    );
