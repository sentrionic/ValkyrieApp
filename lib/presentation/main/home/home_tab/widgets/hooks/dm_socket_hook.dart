import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';

class DMSocketHook extends Hook<void> {
  final BuildContext context;
  const DMSocketHook(this.context);

  @override
  _DMSocketHookState createState() => _DMSocketHookState();
}

class _DMSocketHookState extends HookState<void, DMSocketHook> {
  late io.Socket socket;
  final baseUrl = getIt<String>(instanceName: "BaseUrl");
  final cookie = getCookie();
  final current = getCurrentUser();

  @override
  Future<void> initHook() async {
    super.initHook();

    socket = io.io(
      "$baseUrl/ws",
      io.OptionBuilder().setTransports(
        ['websocket'],
      ).setExtraHeaders({"cookie": cookie}).build(),
    );
    socket.emit('joinUser', current.id);

    socket.on('push_to_top', (channelId) {
      hook.context.read<DMListCubit>().pushToTop(channelId.toString());
    });
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    socket.emit('leaveRoom', current.id);
    socket.disconnect();
    super.dispose();
  }
}
