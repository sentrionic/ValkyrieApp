import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    required this.onSelectTab,
    required this.currentTab,
  });
  final ValueChanged<int> onSelectTab;
  final int currentTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ThemeColors.navBarBackground,
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xff666A6B),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) => onSelectTab(index),
      currentIndex: currentTab,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Friends",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Profile",
        ),
      ],
    );
  }
}
