import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AbilityItem extends StatelessWidget {
  const AbilityItem({super.key, required this.color, required this.img});
  final Color color;
  final String img;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img,
      height: 40.h,
      width: 40.w,
      memCacheWidth: (40.w * MediaQuery.of(context).devicePixelRatio).round(),
      memCacheHeight: (40.h * MediaQuery.of(context).devicePixelRatio).round(),
      color: color,
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        color: color,
      ),
    );
  }
}
