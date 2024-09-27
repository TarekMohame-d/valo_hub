import 'package:flutter/material.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapons_bloc_builder.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapons_drop_down_menu.dart';

class WeaponsTabScreen extends StatelessWidget {
  const WeaponsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WeaponsDropDownMenu(),
        verticalSpace(8),
        const Expanded(
          child: WeaponsBlocBuilder(),
        ),
      ],
    );
  }
}
