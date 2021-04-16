import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/infrastructure/channels/channel_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

class ChannelSocketHook extends Hook<void> {
  final BuildContext context;
  final String guildId;
  const ChannelSocketHook(this.context, this.guildId);

  @override
  _ChannelSocketHookState createState() => _ChannelSocketHookState();
}

class _ChannelSocketHookState extends HookState<void, ChannelSocketHook> {
  late io.Socket socket;
  final baseUrl = getIt<String>(instanceName: "BaseUrl");
  final cookie = getCookie();

  @override
  Future<void> initHook() async {
    super.initHook();

    socket = io.io(
      "$baseUrl/ws",
      io.OptionBuilder().setTransports(
        ['websocket'],
      ).setExtraHeaders({"cookie": cookie}).build(),
    );
    socket.emit('joinGuild', hook.guildId);

    //Channel events
    socket.on(
      'add_channel',
      (data) {
        final channel = ChannelDto.fromMap(data).toDomain();
        hook.context.read<ChannelListCubit>().addNewChannel(channel);
      },
    );

    socket.on(
      'delete_channel',
      (channelId) {
        if (channelId == context.read<CurrentChannelCubit>().state) {
          final guildId = context.read<CurrentGuildCubit>().state;
          final guild = context.read<GuildListCubit>().getCurrentGuild(guildId);
          if (guild != null) {
            if (guild.defaultChannel == channelId) {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            } else {
              context
                  .read<CurrentChannelCubit>()
                  .setChannelId(guild.defaultChannel);
            }
          }
        }
        hook.context
            .read<ChannelListCubit>()
            .removeChannel(channelId.toString());
      },
    );

    socket.on(
      'edit_channel',
      (data) {
        final channel = ChannelDto.fromMap(data).toDomain();
        hook.context.read<ChannelListCubit>().editChannel(channel);
      },
    );

    socket.on(
      'new_notification',
      (channelId) {
        if (channelId != context.read<CurrentChannelCubit>().state) {
          hook.context
              .read<ChannelListCubit>()
              .addNotification(channelId.toString());
        }
      },
    );
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    socket.emit('leaveRoom', hook.guildId);
    socket.disconnect();
    super.dispose();
  }
}
