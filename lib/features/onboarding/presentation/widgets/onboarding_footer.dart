import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({
    super.key,
    required this.currentIndex,
    required this.totalSteps,
    required this.percentage,
    required this.onNextPressed,
  });

  final int currentIndex;
  final int totalSteps;
  final double percentage;
  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Row(
        children: [
          Row(
            children: List.generate(
              totalSteps,
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
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(AppColors.crimsonRed),
                ),
              ),
              GestureDetector(
                onTap: onNextPressed,
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
