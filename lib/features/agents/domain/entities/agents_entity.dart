import 'package:valo_hub/features/agents/data/models/agents_model.dart';

class AgentsEntity {
  final String? uuid;
  final String? displayName;
  final String? description;
  final String? displayIcon;
  final String? fullPortrait;
  final String? killFeedPortrait;
  final String? background;
  final List<String>? backgroundGradientColors;
  final Role? role;
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

// class Role {
//   final String? uuid;
//   final String? displayName;
//   final String? description;
//   final String? displayIcon;

//   Role({
//     required this.uuid,
//     required this.displayName,
//     required this.description,
//     required this.displayIcon,
//   });
// }

// class Abilities {
//   final String? slot;
//   final String? displayName;
//   final String? description;
//   final String? displayIcon;

//   Abilities({
//     required this.slot,
//     required this.displayName,
//     required this.description,
//     required this.displayIcon,
//   });
// }
