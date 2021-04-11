import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';

class MemberSocketHook extends Hook<void> {
  final BuildContext context;
  final String guildId;
  const MemberSocketHook(this.context, this.guildId);

  @override
  _MemberSocketHookState createState() => _MemberSocketHookState();
}

class _MemberSocketHookState extends HookState<void, MemberSocketHook> {
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

    //Member events
    socket.on(
      'add_member',
      (data) {
        final member = MemberDto.fromMap(data).toDomain();
        hook.context.read<MemberListCubit>().addNewMember(member);
      },
    );

    socket.on(
      'remove_member',
      (memberId) {
        hook.context.read<MemberListCubit>().removeMember(memberId.toString());
      },
    );

    socket.on(
      'toggle_online',
      (memberId) {
        hook.context
            .read<MemberListCubit>()
            .toggleOnlineStatus(memberId, isOnline: true);
      },
    );

    socket.on(
      'toggle_offline',
      (memberId) {
        hook.context
            .read<MemberListCubit>()
            .toggleOnlineStatus(memberId, isOnline: false);
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
