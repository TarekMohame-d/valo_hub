import 'package:flutter/material.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/presentation/screens/agent_details_screen.dart';
import 'package:valo_hub/features/agents/presentation/screens/agents_voice_lines_screen.dart';
import 'package:valo_hub/features/home/presentation/screens/home_screen.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';
import 'package:valo_hub/features/player_cards/presentation/screens/player_card_details_screen.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/presentation/screens/weapon_details_screen.dart';

import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this => arguments as ClassName
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.agentDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => AgentDetailsScreen(
            agent: arguments as AgentsEntity,
          ),
        );
      case Routes.agentVoiceLinesScreen:
        return MaterialPageRoute(
          builder: (context) => AgentsVoiceLinesScreen(
            agentName: arguments as String,
          ),
        );
      case Routes.weaponDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => WeaponDetailsScreen(
            weapon: arguments as WeaponEntity,
          ),
        );
        case Routes.playerCardDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => PlayerCardDetailsScreen(
            playerCards: arguments as PlayerCardsEntity,
          ),
        );
      default:
        return null;
    }
  }
}
