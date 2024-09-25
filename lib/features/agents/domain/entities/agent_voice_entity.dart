// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'agent_voice_entity.g.dart';

@HiveType(typeId: 3)
class AgentVoiceEntity {
  @HiveField(0)
  String? quotes;
  @HiveField(1)
  String? audioLink;
  
  AgentVoiceEntity({
    this.quotes,
    this.audioLink,
  });
}
