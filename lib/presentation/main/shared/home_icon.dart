import 'dart:math';

import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

class HomeIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ThemeColors.guildBackground,
        ),
        width: 55,
        height: 55,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi),
          child: const Icon(
            Icons.mode_comment_sharp,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}
