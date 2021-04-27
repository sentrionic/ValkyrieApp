import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/components/dm_list.dart';
import 'package:valkyrie_app/presentation/main/shared/dm_notification_list.dart';
import 'package:valkyrie_app/presentation/main/shared/guild_list.dart';
import 'package:valkyrie_app/presentation/main/shared/home_icon.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: ThemeColors.guildList,
            child: Column(
              children: [
                const SizedBox(
                  height: 34,
                ),
                const HomeIconWidget(
                  isHome: true,
                ),
                const SizedBox(
                  height: 3,
                ),
                DMNotificationList(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    height: 5,
                  ),
                ),
                Expanded(
                  child: GuildListWidget(),
                ),
              ],
            ),
          ),
        ),
        DirectMessageList(),
      ],
    );
  }
}
