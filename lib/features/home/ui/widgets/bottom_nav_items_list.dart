import 'package:flutter/material.dart';
import 'package:valo_hub/custom_icons.dart';

List<BottomNavigationBarItem> generateBottomNavigationBarItems() {
  return [
    const BottomNavigationBarItem(
      icon: Icon(CustomIcons.valorant),
      label: 'Wiki',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.military_tech_rounded),
      label: 'History',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.leaderboard_rounded),
      label: 'Leaderboard',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.emoji_events_rounded),
      label: 'Esports',
    ),
  ];
}
