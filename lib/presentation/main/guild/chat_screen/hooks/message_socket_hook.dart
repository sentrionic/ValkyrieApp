import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/infrastructure/messages/message_dto.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/socket_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/get_cookie.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:web_socket_channel/io.dart';

class MessageSocketHook extends Hook<void> {
  final BuildContext context;
  final String channelId;
  const MessageSocketHook(this.context, this.channelId);

  @override
  _MessageSocketHookState createState() => _MessageSocketHookState();
}

class _MessageSocketHookState extends HookState<void, MessageSocketHook> {
  late IOWebSocketChannel socket;
  final baseUrl = getIt<String>(instanceName: "WSUrl");
  final cookie = getCookie();
  bool isCurrentlyTyping = false;
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

    socket.emit("joinChannel", room: hook.channelId);

    socket.stream.listen((event) {
      final response = jsonDecode(event);

      switch (response["action"]) {
        //Message events
        case "new_message":
          {
            final message = MessageDto.fromMap(response["data"]).toDomain();
            hook.context.read<MessagesCubit>().addNewMessage(message);
            break;
          }

        case "edit_message":
          {
            final message = MessageDto.fromMap(response["data"]).toDomain();
            hook.context.read<MessagesCubit>().updateMessage(message);
            break;
          }

        case "delete_message":
          {
            final messageId = response["data"].toString();
            hook.context.read<MessagesCubit>().deleteMessage(messageId);
            break;
          }

        //Typing events
        case "addToTyping":
          {
            final username = response["data"].toString();
            if (username != current.username.getOrCrash()) {
              hook.context.read<CurrentlyTypingCubit>().addToTyping(username);
            }
            break;
          }

        case "removeFromTyping":
          {
            final username = response["data"].toString();
            if (username != current.username.getOrCrash()) {
              hook.context
                  .read<CurrentlyTypingCubit>()
                  .removeFromTyping(username);
            }
            break;
          }
      }
    });
  }

  @override
  void build(BuildContext context) {
    final current = getCurrentUser();
    final state = context.watch<CreateMessageCubit>().state;
    final text = state.text.value.fold((l) => "", (r) => r);

    if (text.trim().length == 1 && !isCurrentlyTyping) {
      socket.emit(
        "startTyping",
        room: hook.channelId,
        message: current.username.getOrCrash(),
      );
      isCurrentlyTyping = true;
    } else if (text.isEmpty) {
      socket.emit(
        "stopTyping",
        room: hook.channelId,
        message: current.username.getOrCrash(),
      );
      isCurrentlyTyping = false;
    }

    if (state.isSubmitting) {
      isCurrentlyTyping = false;
      socket.emit(
        "stopTyping",
        room: hook.channelId,
        message: current.username.getOrCrash(),
      );
    }
  }

  @override
  void dispose() {
    socket.emit(
      "leaveRoom",
      room: hook.channelId,
    );
    socket.sink.close();
    super.dispose();
  }
}
