import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/agents/presentation/cubit/agents_cubit.dart';
import 'package:valo_hub/features/agents/presentation/screens/agents_tab_screen.dart';
import 'package:valo_hub/features/maps/presentation/cubit/maps_cubit.dart';
import 'package:valo_hub/features/maps/presentation/screens/maps_tab_screen.dart';
import 'package:valo_hub/features/weapons/presentation/cubit/weapons_cubit.dart';
import 'package:valo_hub/features/weapons/presentation/screens/weapons_tab_screen.dart';

class WikiTabView extends StatelessWidget {
  const WikiTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        BlocProvider(
          create: (context) => AgentsCubit(getIt())..getAgents(),
          child: const AgentsTabScreen(),
        ),
        BlocProvider(
          create: (context) => WeaponsCubit(getIt())..getWeapons(),
          child: const WeaponsTabScreen(),
        ),
        BlocProvider(
          create: (context) => MapsCubit(getIt())..getMaps(),
          child: const MapsTabScreen(),
        ),
        const Center(child: Text('Cards')),
        const Center(child: Text('GameModes')),
        const Center(child: Text('Sprays')),
      ],
    );
  }
}
