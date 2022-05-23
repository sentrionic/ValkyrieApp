import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/notifications/dm_notifications_cubit.dart';
import 'package:valkyrie_app/application/notifications/notifications_cubit.dart';
import 'package:valkyrie_app/application/notifications/request_notifications_cubit.dart';
import 'package:valkyrie_app/infrastructure/dms/dm_channel_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/socket_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:web_socket_channel/io.dart';

class UserSocketHook extends Hook<void> {
  final BuildContext context;
  const UserSocketHook(this.context);

  @override
  _UserSocketHookState createState() => _UserSocketHookState();
}

class _UserSocketHookState extends HookState<void, UserSocketHook>
    with WidgetsBindingObserver {
  late IOWebSocketChannel socket;
  final baseUrl = getIt<String>(instanceName: "WSUrl");
  final cookie = getCookie();
  final current = getCurrentUser();

  @override
  Future<void> initHook() async {
    super.initHook();
    WidgetsBinding.instance.addObserver(this);

    socket = IOWebSocketChannel.connect(
      Uri.parse(baseUrl),
      headers: {
        "cookie": cookie,
      },
    );
    socket.emit('joinUser', room: current.id);
    socket.emit('toggleOnline');
    socket.emit('getRequestCount');

    socket.stream.listen(
      (event) {
        final response = jsonDecode(event);

        switch (response["action"]) {
          case "new_dm_notification":
            {
              final notification =
                  DMNotificationDto.fromMap(response["data"]).toDomain();
              if (context.read<CurrentDMCubit>().state != notification.id) {
                hook.context
                    .read<DMNotificationsCubit>()
                    .addNotification(notification);
                hook.context.read<NotificationsCubit>().increment();
              }
              break;
            }

          case "send_request":
            {
              hook.context.read<RequestNotificationsCubit>().addNotification(1);
              hook.context.read<NotificationsCubit>().increment();
              break;
            }

          case "requestCount":
            {
              final count = response["data"].toString();
              hook.context
                  .read<RequestNotificationsCubit>()
                  .addNotification(int.parse(count));
              hook.context
                  .read<NotificationsCubit>()
                  .addToCount(int.parse(count));
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
    socket.emit('toggleOffline');
    socket.sink.close();
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        socket.emit('toggleOnline');
        break;

      case AppLifecycleState.inactive:
        socket.emit('toggleOffline');
        break;

      case AppLifecycleState.detached:
        socket.emit('toggleOffline');
        break;

      default:
        break;
    }
  }
}
