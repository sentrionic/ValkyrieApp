import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/socket_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:web_socket_channel/io.dart';

class MemberSocketHook extends Hook<void> {
  final BuildContext context;
  final String guildId;
  const MemberSocketHook(this.context, this.guildId);

  @override
  _MemberSocketHookState createState() => _MemberSocketHookState();
}

class _MemberSocketHookState extends HookState<void, MemberSocketHook> {
  late IOWebSocketChannel socket;
  final baseUrl = getIt<String>(instanceName: "WSUrl");
  final cookie = getCookie();

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

    socket.stream.listen(
      (event) {
        final response = jsonDecode(event);

        switch (response["action"]) {
          //Member events
          case "add_member":
            {
              final member = MemberDto.fromMap(response["data"]).toDomain();
              hook.context.read<MemberListCubit>().addNewMember(member);
              break;
            }

          case "remove_member":
            {
              final memberId = response["data"].toString();
              hook.context.read<MemberListCubit>().removeMember(memberId);
              break;
            }

          case "toggle_online":
            {
              final memberId = response["data"].toString();
              hook.context
                  .read<MemberListCubit>()
                  .toggleOnlineStatus(memberId, isOnline: true);
              break;
            }

          case "toggle_offline":
            {
              final memberId = response["data"].toString();
              hook.context
                  .read<MemberListCubit>()
                  .toggleOnlineStatus(memberId, isOnline: false);
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
    socket.emit('leaveRoom', room: hook.guildId);
    socket.sink.close();
    super.dispose();
  }
}
