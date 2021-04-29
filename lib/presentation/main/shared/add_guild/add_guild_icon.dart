import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/common/widgets/widget_constants.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/add_guild_screen.dart';

class AddGuildIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(AddGuildScreen.routeName),
      child: Column(
        children: const [
          CircleAvatar(
            radius: WidgetConstants.avatarRadius,
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
