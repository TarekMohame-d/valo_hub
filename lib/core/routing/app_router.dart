import 'package:flutter/material.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/presentation/screens/agent_details_screen.dart';
import 'package:valo_hub/features/home/presentation/screens/home_screen.dart';

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
      default:
        return null;
    }
  }
}
