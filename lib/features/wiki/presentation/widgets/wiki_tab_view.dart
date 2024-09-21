import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/features/agents/presentation/cubit/agents_cubit.dart';
import 'package:valo_hub/features/agents/presentation/screens/agents_tab_screen.dart';
import 'package:valo_hub/features/weapons/presentation/cubit/weapons_cubit.dart';
import 'package:valo_hub/features/weapons/presentation/screens/weapons_tab_screen.dart';

class WikiTabView extends StatefulWidget {
  const WikiTabView({super.key});

  @override
  State<WikiTabView> createState() => _WikiTabViewState();
}

class _WikiTabViewState extends State<WikiTabView> {
  @override
  void dispose() {
    getIt<AgentsCubit>().close();
    getIt<WeaponsCubit>().close();
    super.dispose();
  }

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
          create: (context) => WeaponsCubit(),
          child: const WeaponsTabScreen(),
        ),
        const Center(child: Text('Maps')),
        const Center(child: Text('Cards')),
        const Center(child: Text('GameModes')),
        const Center(child: Text('Bundles')),
        const Center(child: Text('Sprays')),
      ],
    );
  }
}
