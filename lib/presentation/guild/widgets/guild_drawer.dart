import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/guild/widgets/channel_drawer_widgets/drawer_invite_button.dart';
import 'package:valkyrie_app/presentation/guild/widgets/channel_drawer_widgets/guild_channel_list.dart';
import 'package:valkyrie_app/presentation/guild/widgets/channel_drawer_widgets/guild_header.dart';

import 'channel_drawer_widgets/drawer_guild_list.dart';

class GuildDrawer extends StatelessWidget {
  final Guild guild;

  const GuildDrawer({Key? key, required this.guild}) : super(key: key);

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
            flex: 10,
            child: Container(
              color: ThemeColors.dmBackground,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GuildHeader(name: guild.name.getOrCrash()),
                  DrawerInviteButton(),
                  Expanded(
                      child: GuildChannelList(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
