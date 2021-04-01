import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/infrastructure/account/account_entity.dart';
import 'package:valkyrie_app/infrastructure/core/hive_box_names.dart';
import 'package:valkyrie_app/infrastructure/messages/message_dto.dart';

import '../../../../injection.dart';

class MessageSocketHook extends Hook<void> {
  final BuildContext context;
  final String channelId;
  const MessageSocketHook({required this.context, required this.channelId});

  @override
  _MessageSocketHookState createState() => _MessageSocketHookState();
}

class _MessageSocketHookState extends HookState<void, MessageSocketHook> {
  late io.Socket socket;
  late String userId;
  final baseUrl = getIt<String>(instanceName: "BaseUrl");
  final cookie = Hive.box(BoxNames.settingsBox).get("cookie") as String;
  final accountBox = Hive.box<AccountEntity>(BoxNames.currentUser);

  @override
  Future<void> initHook() async {
    super.initHook();
    final current = accountBox.get(0)!.toDomain();

    socket = io.io(
      "$baseUrl/ws",
      io.OptionBuilder().setTransports(
        ['websocket'],
      ).setExtraHeaders({"cookie": cookie}).build(),
    );
    socket.emit('joinChannel', hook.channelId);

    //Message events
    socket.on(
      'new_message',
      (data) {
        final message = MessageDto.fromMap(data).toDomain();
        hook.context.read<MessagesCubit>().addNewMessage(message);
      },
    );

    socket.on(
      'edit_message',
      (data) {
        final message = MessageDto.fromMap(data).toDomain();
        hook.context.read<MessagesCubit>().updateMessage(message);
      },
    );

    socket.on(
      'delete_message',
      (data) {
        final message = MessageDto.fromMap(data).toDomain();
        hook.context.read<MessagesCubit>().deleteMessage(message);
      },
    );

    //Typing events
    socket.on(
      'addToTyping',
      (username) {
        if (username != current.username.getOrCrash()) {
          hook.context
              .read<CurrentlyTypingCubit>()
              .addToTyping(username.toString());
        }
      },
    );

    socket.on(
      'removeFromTyping',
      (username) {
        if (username != current.username.getOrCrash()) {
          hook.context
              .read<CurrentlyTypingCubit>()
              .removeFromTyping(username.toString());
        }
      },
    );
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    socket.emit('leaveRoom', hook.channelId);
    socket.disconnect();
    super.dispose();
  }
}
