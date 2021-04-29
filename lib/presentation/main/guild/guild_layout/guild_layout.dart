import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/widgets/drawer_menu_icon.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/channel_drawer.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/hooks/channel_socket_hook.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/chat_layout.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/widgets/channel_header.dart';
import 'package:valkyrie_app/presentation/main/guild/members/member_drawer.dart';
import 'package:valkyrie_app/presentation/main/shared/hooks/guild_socket_hook.dart';

class GuildLayout extends HookWidget {
  final Guild guild;

  const GuildLayout({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    final channelId = context.watch<CurrentChannelCubit>().state;

    use(ChannelSocketHook(context, guild.id));
    use(GuildSocketHook(context));

    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: ChannelHeader(),
        leading: IconButton(
          icon: DrawerMenuIcon(),
          onPressed: () => _drawerKey.currentState!.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.people,
              size: 25,
              color: Colors.white60,
            ),
            onPressed: () => _drawerKey.currentState!.openEndDrawer(),
          ),
        ],
      ),
      drawer: ChannelDrawer(
        guild: guild,
      ),
      endDrawer: MemberDrawer(
        guild: guild,
      ),
      body: BlocProvider<MessagesCubit>(
        create: (context) =>
            getIt<MessagesCubit>()..getChannelMessages(channelId),
        child: GuildChatLayout(),
      ),
    );
  }
}
