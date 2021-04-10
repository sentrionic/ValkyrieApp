import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class AddGuildIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: const [
          CircleAvatar(
            radius: 26,
            backgroundColor: ThemeColors.guildBackground,
            child: Icon(
              Icons.add,
              size: 30,
              color: ThemeColors.brandGreen,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
