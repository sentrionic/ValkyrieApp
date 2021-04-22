import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/application/friends/get_requests/get_requests_cubit.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_dto.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_request_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';

class FriendSocketHook extends Hook<void> {
  final BuildContext context;
  const FriendSocketHook(this.context);

  @override
  _FriendSocketHookState createState() => _FriendSocketHookState();
}

class _FriendSocketHookState extends HookState<void, FriendSocketHook> {
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
    socket.emit('getRequestCount');

    socket.on('add_friend', (data) {
      final friend = FriendDto.fromMap(data).toDomain();
      hook.context.read<GetFriendsCubit>().addFriend(friend);
      hook.context.read<GetRequestsCubit>().removeRequest(friend.id);
    });

    socket.on('remove_friend', (friendId) {
      hook.context.read<GetFriendsCubit>().removeFriend(friendId.toString());
    });

    socket.on(
      'toggle_online',
      (friendId) {
        hook.context
            .read<GetFriendsCubit>()
            .toggleOnlineStatus(friendId, isOnline: true);
      },
    );

    socket.on(
      'toggle_offline',
      (friendId) {
        hook.context
            .read<GetFriendsCubit>()
            .toggleOnlineStatus(friendId, isOnline: false);
      },
    );

    socket.on('add_request', (data) {
      final request = FriendRequestDto.fromMap(data).toDomain();
      hook.context.read<GetRequestsCubit>().addRequest(request);
    });

    socket.on(
      'requestCount',
      (count) {
        print(count);
      },
    );
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
