import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/themes/app_colors.dart';
import 'package:valo_hub/custom_icons.dart';

class WikiScreen extends StatelessWidget {
  const WikiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      initialIndex: 0,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(color: AppColors.soft, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              child: Material(
                color: AppColors.bottomAndUpSystemColor,
                child: TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                  physics: const BouncingScrollPhysics(),
                  isScrollable: true,
                  indicatorPadding: EdgeInsets.only(bottom: 5.0.h),
                  tabs: const [
                    Tab(
                      icon: Icon(CustomIcons.agent),
                      text: 'Agents',
                    ),
                    Tab(
                      icon: Icon(CustomIcons.weapon),
                      text: 'Weapons',
                    ),
                    Tab(
                      icon: Icon(CustomIcons.map),
                      text: 'Maps',
                    ),
                    Tab(
                      icon: Icon(Icons.style_rounded),
                      text: 'Cards',
                    ),
                    Tab(
                      icon: Icon(Icons.type_specimen_rounded),
                      text: 'GameModes',
                    ),
                    Tab(
                      icon: Icon(Icons.monetization_on_rounded),
                      text: 'Bundles',
                    ),
                    Tab(
                      icon: Icon(CustomIcons.spray),
                      text: 'Sprays',
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
