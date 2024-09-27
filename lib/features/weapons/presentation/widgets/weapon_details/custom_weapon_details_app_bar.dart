import 'package:flutter/material.dart';
import 'package:valo_hub/core/helpers/extensions.dart';

class CustomWeaponDetailsAppBar extends StatelessWidget {
  const CustomWeaponDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ],
    );
  }
}
