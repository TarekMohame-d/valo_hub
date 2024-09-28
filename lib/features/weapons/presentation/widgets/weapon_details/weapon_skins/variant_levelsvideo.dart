import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/weapon_skins/custom_video_player.dart';

class VariantLevelsVideo extends StatefulWidget {
  const VariantLevelsVideo({super.key, required this.levels});

  final List<Levels>? levels;

  @override
  State<VariantLevelsVideo> createState() => _VariantLevelsVideoState();
}

class _VariantLevelsVideoState extends State<VariantLevelsVideo> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return widget.levels!.length < 2
        ? const SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(16),
              Text(
                'Levels',
                style: AppTextStyles.font16WhiteMedium,
              ),
              verticalSpace(12),
              Row(
                children: [
                  ...List.generate(
                    widget.levels!.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 5.w),
                        width: 45.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            width: 2.5.w,
                            color: currentIndex == index
                                ? AppColors.crimsonRed
                                : AppColors.soft,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            (index + 1).toString(),
                            style: AppTextStyles.font14WhiteMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(12),
              CustomVideoPlayer(
                key: ValueKey(widget.levels?[currentIndex]
                    .streamedVideo),
                videoUrl: widget.levels?[currentIndex].streamedVideo ?? 'n/a',
              ),
            ],
          );
  }
}
