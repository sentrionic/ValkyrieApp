import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/socket_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:web_socket_channel/io.dart';

class DMSocketHook extends Hook<void> {
  final BuildContext context;
  const DMSocketHook(this.context);

  @override
  _DMSocketHookState createState() => _DMSocketHookState();
}

class _DMSocketHookState extends HookState<void, DMSocketHook> {
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
          case "push_to_top":
            {
              hook.context
                  .read<DMListCubit>()
                  .pushToTop(response["data"].toString());
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
