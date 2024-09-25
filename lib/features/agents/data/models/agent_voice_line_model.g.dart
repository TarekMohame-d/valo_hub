// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_voice_line_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentVoiceLineModel _$AgentVoiceLineModelFromJson(Map<String, dynamic> json) =>
    AgentVoiceLineModel(
      voices: (json['voices'] as List<dynamic>?)
          ?.map((e) => AgentVoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AgentVoiceLineModelToJson(
        AgentVoiceLineModel instance) =>
    <String, dynamic>{
      'voices': instance.voices,
    };

AgentVoice _$AgentVoiceFromJson(Map<String, dynamic> json) => AgentVoice(
      quotes: json['quotes'] as String?,
      audioLink: json['audio_links'] as String?,
    );

Map<String, dynamic> _$AgentVoiceToJson(AgentVoice instance) =>
    <String, dynamic>{
      'quotes': instance.quotes,
      'audio_links': instance.audioLink,
    };
