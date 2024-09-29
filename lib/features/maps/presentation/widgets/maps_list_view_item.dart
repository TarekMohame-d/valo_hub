import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';

class MapsListViewItem extends StatelessWidget {
  const MapsListViewItem({super.key, required this.map});

  final MapEntity map;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: map.splash ?? 'n/a',
              errorWidget: (context, url, error) => const Icon(Icons.error),
              memCacheWidth: (MediaQuery.of(context).size.width *
                      MediaQuery.of(context).devicePixelRatio)
                  .round(),
              memCacheHeight:
                  (200.h * MediaQuery.of(context).devicePixelRatio).round(),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
              color: Colors.grey.withOpacity(0.5),
            ),
            child: Text(
              textAlign: TextAlign.center,
              map.displayName ?? 'n/a',
              style: AppTextStyles.font14WhiteMedium,
            ),
          ),
        ],
      ),
    );
  }
}
