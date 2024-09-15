import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/helpers/shared_pref_helper.dart';
import 'package:valo_hub/core/helpers/spacing.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/features/onboarding/ui/data/models/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static List<OnboardingModel> onboardingList = [
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
  PageController? controller;
  int currentIndex = 0;
  double percentage = 0.33;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //changeSystemUIColor();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: onboardingList.length,
                  onPageChanged: (int index) {
                    if (index >= currentIndex) {
                      setState(() {
                        currentIndex = index;
                        index == onboardingList.length - 1
                            ? percentage = 1
                            : percentage += 0.33;
                      });
                    } else {
                      setState(() {
                        currentIndex = index;
                        percentage -= 0.33;
                      });
                    }
                  },
                  itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.55,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: OverflowBox(
                          maxHeight: double.infinity,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              Positioned(
                                bottom: 0.h,
                                child: Image.asset(
                                  onboardingList[index].image,
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      verticalSpace(28),
                      Text(
                        textAlign: TextAlign.center,
                        onboardingList[index].title,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpace(24),
                      Text(
                        onboardingList[index].description,
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 24.w,
                  left: 24.w,
                  bottom: 24.h,
                ),
                child: Row(
                  children: [
                    Row(
                      children: List.generate(
                        onboardingList.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    const Spacer(),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 55.w,
                          height: 55.h,
                          child: CircularProgressIndicator(
                            value: percentage,
                            backgroundColor: Colors.grey,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (currentIndex == onboardingList.length - 1) {
                              await SharedPrefHelper.setData(
                                SharedPrefKeys.onBoarding,
                                true,
                              );
                              await context.pushNamedAndRemoveUntil(
                                Routes.homeScreen,
                                predicate: (Route<dynamic> route) => false,
                              );
                            } else {
                              controller!.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5.0.w),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      height: 8.0.h,
      width: currentIndex == index ? 24.0.w : 8.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.white : Colors.grey,
      ),
    );
  }
}
