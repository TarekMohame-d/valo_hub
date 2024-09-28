import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/weapon_skins/weapons_skins_item.dart';

class WeaponSkinsListView extends StatelessWidget {
  const WeaponSkinsListView({super.key, required this.weapon});

  final WeaponEntity weapon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.brightCoralRed,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weapon.skins!.length,
        itemBuilder: (context, index) => WeaponsSkinsItem(
          weaponSkin: weapon.skins![index],
        ),
      ),
    );
  }
}
