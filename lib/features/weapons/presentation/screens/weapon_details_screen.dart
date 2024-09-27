import 'package:flutter/material.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/custom_weapon_details_app_bar.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/weapon_image.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/weapon_skins/weapon_skins_list_view.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapon_details/weapon_stats_widget.dart';

class WeaponDetailsScreen extends StatelessWidget {
  const WeaponDetailsScreen({super.key, required this.weapon});

  final WeaponEntity weapon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const CustomWeaponDetailsAppBar(),
              verticalSpace(12),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: WeaponImage(imageUrl: weapon.displayIcon!),
                    ),
                    SliverToBoxAdapter(
                      child: WeaponStatsWidget(weapon: weapon),
                    ),
                    SliverToBoxAdapter(
                      child: WeaponSkinsListView(weapon: weapon),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
