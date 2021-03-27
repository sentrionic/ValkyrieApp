import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class GuildMessageInput extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();
    final channelId = context.watch<CurrentChannelCubit>().state;
    return BlocListener<CreateMessageCubit, CreateMessageState>(
      listener: (context, state) {
        state.messageFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (_) => {},
            (_) {
              context.read<CreateMessageCubit>().resetMessageText();
              _controller.clear();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 50.0,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.photo),
              iconSize: 25.0,
              color: Colors.white,
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  context.read<CreateMessageCubit>().messageTextChaned(value);
                },
                controller: _controller,
                decoration: InputDecoration(
                  hintText:
                      'Message #${context.watch<ChannelCubit>().getCurrentChannel(channelId)?.name.getOrCrash() ?? ""}',
                  fillColor: ThemeColors.messageInput,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: ThemeColors.themeBlue,
              radius: 22,
              child: IconButton(
                icon: const Icon(Icons.send),
                iconSize: 20.0,
                color: Colors.white,
                onPressed: () {
                  context.read<CreateMessageCubit>().createMessage(channelId);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
