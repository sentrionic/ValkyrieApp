import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/drawer_guild_list.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/invite_button.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/channel_list.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/channel_drawer_header.dart';

class ChannelDrawer extends StatelessWidget {
  final Guild guild;

  const ChannelDrawer({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: DrawerGuildList(),
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
                  ChannelDrawerHeader(guild: guild),
                  InviteButton(
                    guild: guild,
                  ),
                  Expanded(
                    child: ChannelList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
