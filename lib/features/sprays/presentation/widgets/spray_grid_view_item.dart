import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';

class SprayGridViewItem extends StatelessWidget {
  const SprayGridViewItem({super.key, required this.spray});

  final SprayEntity spray;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CachedNetworkImage(
          imageUrl: spray.fullTransparentIcon ?? 'N/A',
          errorWidget: (context, url, error) => const Icon(Icons.error),
          memCacheHeight:
              (50.h * MediaQuery.of(context).devicePixelRatio).round(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            color: Colors.grey.withOpacity(0.5),
            child: Text(
              spray.displayName ?? 'N/A',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font14WhiteRegular,
            ),
          ),
        ),
      ],
    );
  }
}
