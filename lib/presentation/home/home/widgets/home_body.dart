import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/dm_list.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/guild_list.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/home_icon.dart';

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
          ),
        ),
        Expanded(
          flex: 11,
          child: Container(
            color: ThemeColors.dmBackground,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Direct Messages",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: DMListWidget(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
