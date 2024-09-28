import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/functions/custom_show_modal_bottom_sheet.dart';

class WeaponsSkinsItem extends StatelessWidget {
  const WeaponsSkinsItem({
    super.key,
    required this.weaponSkin,
  });

  final Skins weaponSkin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 6.w),
      child: GestureDetector(
        onTap: () {
          customShowModalBottomSheet(
            context,
            weaponSkin,
          );
        },
        child: Container(
          width: 300.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: weaponSkin.displayIcon ?? 'n/a',
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  child: Text(
                    weaponSkin.displayName ?? 'N/A',
                    style: AppTextStyles.font14WhiteMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
