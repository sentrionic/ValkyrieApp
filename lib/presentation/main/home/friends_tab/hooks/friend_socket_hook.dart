import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/application/friends/get_requests/get_requests_cubit.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_dto.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_request_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/socket_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:web_socket_channel/io.dart';

class FriendSocketHook extends Hook<void> {
  final BuildContext context;
  const FriendSocketHook(this.context);

  @override
  _FriendSocketHookState createState() => _FriendSocketHookState();
}

class _FriendSocketHookState extends HookState<void, FriendSocketHook> {
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
          case "add_friend":
            {
              final friend = FriendDto.fromMap(response["data"]).toDomain();
              hook.context.read<GetFriendsCubit>().addFriend(friend);
              hook.context.read<GetRequestsCubit>().removeRequest(friend.id);
              break;
            }

          case "remove_friend":
            {
              hook.context
                  .read<GetFriendsCubit>()
                  .removeFriend(response["data"].toString());
              break;
            }

          case "toggle_online":
            {
              hook.context.read<GetFriendsCubit>().toggleOnlineStatus(
                    response["data"].toString(),
                    isOnline: true,
                  );
              break;
            }

          case "toggle_offline":
            {
              hook.context.read<GetFriendsCubit>().toggleOnlineStatus(
                    response["data"].toString(),
                    isOnline: false,
                  );
              break;
            }

          case "add_request":
            {
              final request =
                  FriendRequestDto.fromMap(response["data"]).toDomain();
              hook.context.read<GetRequestsCubit>().addRequest(request);
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
