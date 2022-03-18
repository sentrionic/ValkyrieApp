import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/infrastructure/channels/channel_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/socket_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';
import 'package:web_socket_channel/io.dart';

class ChannelSocketHook extends Hook<void> {
  final BuildContext context;
  final String guildId;
  const ChannelSocketHook(this.context, this.guildId);

  @override
  _ChannelSocketHookState createState() => _ChannelSocketHookState();
}

class _ChannelSocketHookState extends HookState<void, ChannelSocketHook> {
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
    socket.emit('joinGuild', room: hook.guildId);
    socket.emit('joinUser', room: current.id);

    socket.stream.listen((event) {
      final response = jsonDecode(event);

      switch (response["action"]) {
        //Channel events
        case "add_channel":
          {
            final channel = ChannelDto.fromMap(response["data"]).toDomain();
            hook.context.read<ChannelListCubit>().addNewChannel(channel);
            break;
          }

        case "add_private_channel":
          {
            final channel = ChannelDto.fromMap(response["data"]).toDomain();
            hook.context.read<ChannelListCubit>().addNewChannel(channel);
            break;
          }

        case "edit_channel":
          {
            final channel = ChannelDto.fromMap(response["data"]).toDomain();
            hook.context.read<ChannelListCubit>().editChannel(channel);
            break;
          }

        case "delete_channel":
          {
            final channelId = response["data"].toString();
            if (channelId == context.read<CurrentChannelCubit>().state) {
              final guildId = context.read<CurrentGuildCubit>().state;
              final guild =
                  context.read<GuildListCubit>().getCurrentGuild(guildId);
              if (guild != null) {
                if (guild.defaultChannel == channelId) {
                  Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName);
                } else {
                  context
                      .read<CurrentChannelCubit>()
                      .setChannelId(guild.defaultChannel);
                }
              }
            }
            hook.context.read<ChannelListCubit>().removeChannel(channelId);
            break;
          }

        case "new_notification":
          {
            final channelId = response["data"].toString();
            if (channelId != context.read<CurrentChannelCubit>().state) {
              hook.context.read<ChannelListCubit>().addNotification(channelId);
              break;
            }
          }
      }
    });
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    socket.emit('leaveGuild', room: hook.guildId);
    socket.emit('leaveRoom', room: current.id);
    socket.sink.close();
    super.dispose();
  }
}
