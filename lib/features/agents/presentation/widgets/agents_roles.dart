import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/features/agents/presentation/cubit/agents_cubit.dart';
import 'package:valo_hub/features/agents/presentation/widgets/agents_roles_item.dart';

class AgentsRoles extends StatelessWidget {
  const AgentsRoles({super.key, required this.currentIndex});
  final int currentIndex;

  static const List<String> roles = [
    'All',
    'Initiator',
    'Duelist',
    'Sentinel',
    'Controller',
  ];
  static const List<String> images = [
    'assets/images/all_agents.png',
    'assets/images/initiator.png',
    'assets/images/duelist.png',
    'assets/images/sentinel.png',
    'assets/images/controller.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        roles.length,
        (index) => GestureDetector(
          onTap: () {
            context.read<AgentsCubit>().changeRole(index);
          },
          child: RolesItem(
            color: currentIndex == index
                ? AppColors.brightCoralRed
                : AppColors.soft,
            img: images[index],
          ),
        ),
      ),
    );
  }
}
