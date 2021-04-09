import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/infrastructure/messages/message_dto.dart';
import 'package:valkyrie_app/presentation/common/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/get_current_user.dart';

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
  final baseUrl = getIt<String>(instanceName: "BaseUrl");
  final cookie = getCookie();
  bool isCurrentlyTyping = false;
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
  void build(BuildContext context) {
    final current = getCurrentUser();
    final state = context.watch<CreateMessageCubit>().state;
    final text = state.text.value.fold((l) => "", (r) => r);

    if (text.trim().length == 1 && !isCurrentlyTyping) {
      socket.emit(
        'startTyping',
        [hook.channelId, current.username.getOrCrash()],
      );
      isCurrentlyTyping = true;
    } else if (text.isEmpty) {
      socket.emit(
        'stopTyping',
        [hook.channelId, current.username.getOrCrash()],
      );
      isCurrentlyTyping = false;
    }

    if (state.isSubmitting) {
      isCurrentlyTyping = false;
      socket.emit(
        'stopTyping',
        [hook.channelId, current.username.getOrCrash()],
      );
    }
  }

  @override
  void dispose() {
    socket.emit('leaveRoom', hook.channelId);
    socket.disconnect();
    super.dispose();
  }
}
