import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/features/onboarding/data/models/onboarding_model.dart';
import 'package:valo_hub/features/onboarding/presentation/widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static final List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: 'assets/images/jett.png',
      title: 'Master the Game',
      description:
          'Dive into detailed guides for every agent, map, and weapon. Learn about abilities and best loadouts to enhance your gameplay and dominate your opponents.',
    ),
    OnboardingModel(
      image: 'assets/images/sova.png',
      title: 'Track Your Match History',
      description:
          'Keep a record of your match stats and performance. Analyze your wins, losses, and key moments to improve and refine your skills over time.',
    ),
    OnboardingModel(
      image: 'assets/images/omen.png',
      title: 'Esports at Your Fingertips',
      description:
          'Stay updated on the latest competitive esports tournaments. Follow your favorite teams, track live matches, and get detailed insights into top-tier play.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: OnboardingContent(onboardingList: onboardingList),
        ),
      ),
    );
  }
}
