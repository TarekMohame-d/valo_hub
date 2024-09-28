import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';

class SkinColorVariant extends StatefulWidget {
  const SkinColorVariant({
    super.key,
    this.chromas,
    required this.defaultSkin,
  });

  final List<Chromas>? chromas;
  final String? defaultSkin;

  @override
  State<SkinColorVariant> createState() => _SkinColorVariantState();
}

class _SkinColorVariantState extends State<SkinColorVariant> {
  String? selectedSkin;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedSkin = widget.defaultSkin ?? 'n/a';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.chromas!.length < 2
            ? const SizedBox.shrink()
            : Row(
                children: [
                  ...List.generate(
                    widget.chromas!.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            selectedSkin = widget.chromas![index].displayIcon;
                          });
                        },
                        child: Opacity(
                          opacity: selectedIndex == index ? 1.0 : 0.5,
                          child: Container(
                            margin: EdgeInsets.only(right: 5.w, top: 12.h),
                            height: 45.h,
                            width: 45.w,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: CachedNetworkImage(
                                imageUrl: widget.chromas![index].swatch ?? '',
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
        Container(
          margin: EdgeInsets.only(top: 12.h),
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.brightCoralRed,
          ),
          child: CachedNetworkImage(
            imageUrl: selectedSkin ?? 'n/a',
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ],
    );
  }
}
