import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/guild_list.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/home_icon.dart';

class DrawerGuildList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.guildList,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          HomeIconWidget(),
          const SizedBox(
            height: 3,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          Expanded(
            child: GuildListWidget(),
          ),
        ],
      ),
    );
  }
}
