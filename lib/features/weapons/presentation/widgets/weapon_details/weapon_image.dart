import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';

class WeaponImage extends StatelessWidget {
  const WeaponImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.brightCoralRed,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.h, right: 10.w),
            child: CachedNetworkImage(
              color: Colors.black.withOpacity(0.2),
              imageUrl: imageUrl,
              memCacheWidth: (MediaQuery.of(context).size.width *
                      MediaQuery.of(context).devicePixelRatio)
                  .round(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          CachedNetworkImage(
            imageUrl: imageUrl,
            memCacheWidth: (MediaQuery.of(context).size.width *
                    MediaQuery.of(context).devicePixelRatio)
                .round(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
