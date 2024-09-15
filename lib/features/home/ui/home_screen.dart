import 'package:flutter/material.dart';
import 'package:valo_hub/core/themes/app_colors.dart';
import 'package:valo_hub/features/History/ui/history_screen.dart';
import 'package:valo_hub/features/esports/ui/esports_screen.dart';
import 'package:valo_hub/features/home/ui/widgets/bottom_nav_items_list.dart';
import 'package:valo_hub/features/leaderboard/ui/leaderboard_screen.dart';
import 'package:valo_hub/features/wiki/ui/wiki_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const WikiScreen(),
    const HistoryScreen(),
    const LeaderboardScreen(),
    const EsportsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(color: AppColors.soft, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              items: generateBottomNavigationBarItems(),
              currentIndex: currentIndex,
              onTap: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
