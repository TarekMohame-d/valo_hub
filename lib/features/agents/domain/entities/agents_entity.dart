import 'package:hive/hive.dart';
import 'package:valo_hub/features/agents/data/models/agents_model.dart';

part 'agents_entity.g.dart';

@HiveType(typeId: 0)
class AgentsEntity {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final String? displayIcon;
  @HiveField(4)
  final String? fullPortrait;
  @HiveField(5)
  final String? killFeedPortrait;
  @HiveField(6)
  final String? background;
  @HiveField(7)
  final List<String>? backgroundGradientColors;
  @HiveField(8)
  final Role? role;
  @HiveField(9)
  final List<Abilities>? abilities;

  AgentsEntity({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.fullPortrait,
    required this.killFeedPortrait,
    required this.background,
    required this.backgroundGradientColors,
    required this.role,
    required this.abilities,
  });
}
