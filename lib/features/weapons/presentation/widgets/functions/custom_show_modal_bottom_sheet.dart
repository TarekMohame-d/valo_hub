import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/weapon_skins/skin_color_variant.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/weapon_skins/variant_levelsvideo.dart';

Future<void> customShowModalBottomSheet(
  BuildContext context,
  Skins weaponSkin,
) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      int levelsLength = weaponSkin.levels?.length ?? 0;
      int chromasLength = weaponSkin.chromas?.length ?? 0;
      return Container(
        height: levelsLength > 1 || chromasLength > 1
            ? MediaQuery.of(context).size.height * 0.75
            : MediaQuery.of(context).size.height * 0.30,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          border: Border(
            top: BorderSide(
              color: AppColors.crimsonRed,
              width: 5,
            ),
          ),
          color: Colors.black,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(8),
                Container(
                  width: 50.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                SkinColorVariant(
                  chromas: weaponSkin.chromas,
                  defaultSkin: weaponSkin.displayIcon,
                ),
                VariantLevelsVideo(
                  levels: weaponSkin.levels,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
