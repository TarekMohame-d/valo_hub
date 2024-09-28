import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';

class WeaponsItem extends StatelessWidget {
  const WeaponsItem({super.key, required this.weapon});

  final WeaponEntity weapon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.weaponDetailsScreen, arguments: weapon);
      },
      child: Container(
        height: 150.h,
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage('assets/images/weapons_background.jpg'),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: CachedNetworkImage(
                width: 200.w,
                height: 100.h,
                imageUrl: weapon.displayIcon!,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Text(
                  weapon.displayName!,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.font14WhiteMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
