import 'package:flutter/material.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapons_item.dart';

class WeaponsListView extends StatelessWidget {
  const WeaponsListView({super.key, required this.weapons});

  final List<WeaponEntity> weapons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weapons.length,
      itemBuilder: (context, index) => WeaponsItem(
        weapon: weapons[index],
      ),
    );
  }
}
