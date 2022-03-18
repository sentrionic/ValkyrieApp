import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/socket_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';
import 'package:web_socket_channel/io.dart';

class GuildSocketHook extends Hook<void> {
  final BuildContext context;
  const GuildSocketHook(this.context);

  @override
  _GuildSocketHookState createState() => _GuildSocketHookState();
}

class _GuildSocketHookState extends HookState<void, GuildSocketHook> {
  late IOWebSocketChannel socket;
  final baseUrl = getIt<String>(instanceName: "WSUrl");
  final cookie = getCookie();
  final current = getCurrentUser();

  @override
  Future<void> initHook() async {
    super.initHook();

    socket = IOWebSocketChannel.connect(
      Uri.parse(baseUrl),
      headers: {
        "cookie": cookie,
      },
    );
    socket.emit('joinUser', room: current.id);

    socket.stream.listen(
      (event) {
        final response = jsonDecode(event);

        switch (response["action"]) {
          //Guild events
          case "edit_guild":
            {
              final guild = GuildDto.fromMap(response["data"]).toDomain();
              hook.context.read<GuildListCubit>().editGuild(guild);
              break;
            }

          case "delete_guild":
            {
              final guildId = response["data"].toString();
              if (guildId == context.read<CurrentGuildCubit>().state) {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              }
              hook.context.read<GuildListCubit>().removeGuild(guildId);
              break;
            }

          case "remove_from_guild":
            {
              final guildId = response["data"].toString();
              if (guildId == context.read<CurrentGuildCubit>().state) {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              }
              hook.context.read<GuildListCubit>().removeGuild(guildId);
              break;
            }

          case "new_notification":
            {
              final guildId = response["data"].toString();
              if (guildId != context.read<CurrentGuildCubit>().state) {
                hook.context.read<GuildListCubit>().addNotification(guildId);
              }
              break;
            }
        }
      },
    );
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    socket.emit('leaveRoom', room: current.id);
    socket.sink.close();
    super.dispose();
  }
}
