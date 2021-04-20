import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/drawer_guild_list.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/components/dm_list.dart';

class DMDrawer extends StatelessWidget {
  const DMDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: DrawerGuildList(),
          ),
          DirectMessageList(),
        ],
      ),
    );
  }
}
