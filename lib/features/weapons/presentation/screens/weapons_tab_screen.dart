import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/features/weapons/presentation/cubit/weapons_cubit.dart';

class WeaponsTabScreen extends StatelessWidget {
  const WeaponsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeaponsCubit, WeaponsState>(
      builder: (context, state) {
        return const Center(child: Text('Weapons'));
      },
    );
  }
}
