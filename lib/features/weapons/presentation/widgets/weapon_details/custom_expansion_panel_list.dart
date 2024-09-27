import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/functions/helper_widget_function.dart';

class CustomExpansionPanelList extends StatefulWidget {
  const CustomExpansionPanelList({
    super.key,
    required this.adsStats,
    required this.damageRanges,
    required this.shopData,
  });

  final AdsStats? adsStats;
  final List<DamageRanges>? damageRanges;
  final ShopData? shopData;

  @override
  State<CustomExpansionPanelList> createState() =>
      _CustomExpansionPanelListState();
}

class _CustomExpansionPanelListState extends State<CustomExpansionPanelList> {
  late final List<bool> _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = List.generate(
      _calculatePanelCount(),
      (index) => false,
    );
  }

  int _calculatePanelCount() {
    int count = 0;
    if (widget.adsStats != null) count++;
    if (!widget.damageRanges.isNullOrEmpty()) count++;
    if (widget.shopData != null) count++;
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ExpansionPanelList(
          children: _buildPanels(),
          expandIconColor: Colors.white,
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              _isExpanded[panelIndex] = isExpanded;
            });
          },
        ),
      ),
    );
  }

  List<ExpansionPanel> _buildPanels() {
    List<ExpansionPanel> panels = [];
    int index = 0;

    if (widget.adsStats != null) {
      panels.add(_buildAdsStatsPanel(index));
      index++;
    }

    if (!widget.damageRanges.isNullOrEmpty()) {
      panels.add(_buildDamageRangesPanel(index));
      index++;
    }

    if (widget.shopData != null) {
      panels.add(_buildShopDataPanel(index));
    }

    return panels;
  }

  ExpansionPanel _buildAdsStatsPanel(int index) {
    return ExpansionPanel(
      canTapOnHeader: true,
      headerBuilder: (context, isExpanded) {
        return ListTile(
          title: Text(
            'Ads Stats',
            style: AppTextStyles.font16WhiteMedium,
          ),
        );
      },
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.0.h),
        child: Column(
          children: [
            buildStatRow('Zoom Multiplier', widget.adsStats?.zoomMultiplier),
            buildStatRow('Fire Rate', widget.adsStats?.fireRate),
            buildStatRow(
                'Run Speed Multiplier', widget.adsStats?.runSpeedMultiplier),
            buildStatRow('Burst Count', widget.adsStats?.burstCount),
            buildStatRow(
                'First Bullet Accuracy', widget.adsStats?.firstBulletAccuracy),
          ],
        ),
      ),
      isExpanded: _isExpanded[index],
    );
  }

  ExpansionPanel _buildDamageRangesPanel(int index) {
    return ExpansionPanel(
      canTapOnHeader: true,
      headerBuilder: (context, isExpanded) {
        return ListTile(
          title: Text(
            'Damage Ranges',
            style: AppTextStyles.font16WhiteMedium,
          ),
        );
      },
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.0.h),
        child: Column(
          children: widget.damageRanges!.map((damageRange) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildStatRow('Range',
                      '${damageRange.rangeStartMeters}m - ${damageRange.rangeEndMeters}m'),
                  buildStatRow('Head Damage', damageRange.headDamage?.toInt()),
                  buildStatRow('Body Damage', damageRange.bodyDamage?.toInt()),
                  buildStatRow('Leg Damage', damageRange.legDamage?.toInt()),
                  const Divider(),
                ],
              ),
            );
          }).toList(),
        ),
      ),
      isExpanded: _isExpanded[index],
    );
  }

  ExpansionPanel _buildShopDataPanel(int index) {
    return ExpansionPanel(
      canTapOnHeader: true,
      headerBuilder: (context, isExpanded) {
        return ListTile(
          title: Text(
            'Shop Data',
            style: AppTextStyles.font16WhiteMedium,
          ),
        );
      },
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.0.h),
        child: Column(
          children: [
            buildStatRow('Cost', widget.shopData?.cost),
            buildStatRow('Category', widget.shopData?.category),
          ],
        ),
      ),
      isExpanded: _isExpanded[index],
    );
  }
}
