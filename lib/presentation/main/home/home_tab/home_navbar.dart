import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/notifications/request_notifications_cubit.dart';
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
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: BlocBuilder<RequestNotificationsCubit, int>(
            buildWhen: (p, c) => p != c,
            builder: (context, state) => Stack(
              children: [
                const Icon(
                  Icons.person,
                ),
                if (state > 0)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: ThemeColors.brandRed,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 14,
                        minHeight: 12,
                      ),
                      child: Text(
                        '$state',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
              ],
            ),
          ),
          label: "Friends",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Profile",
        ),
      ],
    );
  }
}
