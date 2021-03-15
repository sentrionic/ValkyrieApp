import 'package:flutter/material.dart';

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
      backgroundColor: Colors.black87,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey.shade900,
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
