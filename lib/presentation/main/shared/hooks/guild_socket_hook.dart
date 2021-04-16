import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

class GuildSocketHook extends Hook<void> {
  final BuildContext context;
  const GuildSocketHook(this.context);

  @override
  _GuildSocketHookState createState() => _GuildSocketHookState();
}

class _GuildSocketHookState extends HookState<void, GuildSocketHook> {
  late io.Socket socket;
  final baseUrl = getIt<String>(instanceName: "BaseUrl");
  final cookie = getCookie();
  final current = getCurrentUser();

  @override
  Future<void> initHook() async {
    super.initHook();
    // print(current.id);

    socket = io.io(
      "$baseUrl/ws",
      io.OptionBuilder().setTransports(
        ['websocket'],
      ).setExtraHeaders({"cookie": cookie}).build(),
    );
    socket.emit('joinUser', current.id);

    //Guild events
    socket.on(
      'delete_guild',
      (guildId) {
        if (guildId == context.read<CurrentGuildCubit>().state) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        }
        hook.context.read<GuildListCubit>().removeGuild(guildId.toString());
      },
    );

    socket.on(
      'remove_from_guild',
      (guildId) {
        if (guildId == context.read<CurrentGuildCubit>().state) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        }
        hook.context.read<GuildListCubit>().removeGuild(guildId.toString());
      },
    );

    socket.on(
      'edit_guild',
      (data) {
        final guild = GuildDto.fromMap(data).toDomain();
        hook.context.read<GuildListCubit>().editGuild(guild);
      },
    );

    socket.on(
      'new_notification',
      (guildId) {
        if (guildId != context.read<CurrentGuildCubit>().state) {
          hook.context
              .read<GuildListCubit>()
              .addNotification(guildId.toString());
        }
      },
    );
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    // print("Dispose");
    socket.emit('leaveRoom', current.id);
    socket.disconnect();
    super.dispose();
  }
}
