import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/onboarding/data/models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.model});

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(32),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        AppColors.brightCoralRed,
                        AppColors.crimsonRed,
                        AppColors.darkMaroon,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.h,
                  child: Image.asset(
                    model.image,
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpace(28),
        Text(
          textAlign: TextAlign.center,
          model.title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpace(24),
        Text(
          model.description,
          textAlign: TextAlign.center,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
