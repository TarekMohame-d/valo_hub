import 'package:flutter/material.dart';
import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/helpers/shared_pref_helper.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/features/onboarding/data/models/onboarding_model.dart';
import 'package:valo_hub/features/onboarding/presentation/widgets/onboarding_footer.dart';
import 'package:valo_hub/features/onboarding/presentation/widgets/onboarding_page_view_item.dart';

class OnboardingContent extends StatefulWidget {
  const OnboardingContent({super.key, required this.onboardingList});

  final List<OnboardingModel> onboardingList;

  @override
  State<OnboardingContent> createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  late PageController controller;
  int currentIndex = 0;
  double percentage = 0.33;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: controller,
            itemCount: widget.onboardingList.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
                percentage = (index + 1) / widget.onboardingList.length;
              });
            },
            itemBuilder: (context, index) =>
                OnboardingItem(model: widget.onboardingList[index]),
          ),
        ),
        OnboardingFooter(
          currentIndex: currentIndex,
          totalSteps: widget.onboardingList.length,
          percentage: percentage,
          onNextPressed: () => _handleNext(),
        ),
      ],
    );
  }

  void _handleNext() async {
    if (currentIndex == widget.onboardingList.length - 1) {
      // Save data to shared preferences asynchronously
      await SharedPrefHelper.setData(SharedPrefKeys.isFirstTime, false);

      // Ensure the widget is still mounted before using the context
      if (!mounted) return;

      // Navigate to the home screen
      context.pushNamedAndRemoveUntil(
        Routes.homeScreen,
        predicate: (Route<dynamic> route) => false,
      );
    } else {
      controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
