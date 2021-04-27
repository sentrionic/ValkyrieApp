import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/close_dm/close_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/widgets/drawer_menu_icon.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/chat_layout.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/components/dm_drawer.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/widgets/dm_chat_header.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

enum _PopupActions { close }

class DMLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    final dmChannelId = context.read<CurrentDMCubit>().state;
    final dmChannel = context.read<DMListCubit>().getCurrentDM(dmChannelId);
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: dmChannel != null ? DMChatHeader(channel: dmChannel) : null,
        leading: IconButton(
          icon: DrawerMenuIcon(),
          onPressed: () => _drawerKey.currentState!.openDrawer(),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == _PopupActions.close) {
                context.read<CloseDMCubit>().closeChannel(dmChannelId);
                context.read<DMListCubit>().removeDM(dmChannelId);
                Navigator.of(context).pushReplacementNamed(
                  HomeScreen.routeName,
                );
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: _PopupActions.close,
                child: Text("Close DM"),
              ),
            ],
          )
        ],
      ),
      drawer: const DMDrawer(),
      body: BlocProvider<MessagesCubit>(
        create: (context) =>
            getIt<MessagesCubit>()..getChannelMessages(dmChannelId),
        child: DMChatLayout(),
      ),
    );
  }
}
