import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/functions/helper_widget_function.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/custom_expansion_panel_list.dart';

class WeaponStatsWidget extends StatelessWidget {
  const WeaponStatsWidget({super.key, required this.weapon});

  final WeaponEntity weapon;

  @override
  Widget build(BuildContext context) {
    return weapon.weaponStats != null
        ? Container(
            margin: EdgeInsets.symmetric(vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.brightCoralRed,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      buildStatRow('Fire Rate', weapon.weaponStats?.fireRate),
                      buildStatRow(
                          'Magazine Size', weapon.weaponStats?.magazineSize),
                      buildStatRow('Run Speed Multiplier',
                          weapon.weaponStats?.runSpeedMultiplier),
                      buildStatRow('Equip Time Seconds',
                          weapon.weaponStats?.equipTimeSeconds),
                      buildStatRow('Reload Time Seconds',
                          weapon.weaponStats?.reloadTimeSeconds),
                      buildStatRow('First Bullet Accuracy',
                          weapon.weaponStats?.firstBulletAccuracy),
                      buildStatRow(
                        'Wall Penetration',
                        weapon.weaponStats?.wallPenetration?.split('::').last,
                      ),
                    ],
                  ),
                ),
                CustomExpansionPanelList(
                  adsStats: weapon.weaponStats?.adsStats,
                  damageRanges: weapon.weaponStats?.damageRanges,
                  shopData: weapon.shopData,
                )
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: const SizedBox.shrink(),
          );
  }
}
