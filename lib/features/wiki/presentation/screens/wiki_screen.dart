import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/theme/custom_icons.dart';
import 'package:valo_hub/features/wiki/presentation/widgets/wiki_tab_view.dart';

class WikiLayout extends StatelessWidget {
  const WikiLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: WikiTab.values.length,
      child: Column(
        children: [
          _buildTabBar(),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: WikiTabView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
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
            tabs: WikiTab.values
                .map((tab) => Tab(
                      icon: Icon(tab.icon),
                      text: tab.label,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

enum WikiTab {
  agents(CustomIcons.agent, 'Agents'),
  weapons(CustomIcons.weapon, 'Weapons'),
  maps(CustomIcons.map, 'Maps'),
  cards(Icons.style_rounded, 'Cards'),
  gameModes(Icons.type_specimen_rounded, 'GameModes'),
  bundles(Icons.monetization_on_rounded, 'Bundles'),
  sprays(CustomIcons.spray, 'Sprays');

  final IconData icon;
  final String label;

  const WikiTab(this.icon, this.label);
}
