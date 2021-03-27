import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/presentation/common/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/guild/widgets/guild_message_loader_or_end.dart';

import '../items/message_item.dart';
import 'guild_message_input.dart';

class GuildChat extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    const _scrollThreshold = 200.0;
    final _controller = useScrollController();

    _controller.addListener(() {
      final maxScroll = _controller.position.maxScrollExtent;
      final currentScroll = _controller.position.pixels;
      if (maxScroll - currentScroll <= _scrollThreshold) {
        context.read<MessagesCubit>().fetchMoreMessages(channelId);
      }
    });

    return BlocBuilder<MessagesCubit, MessagesState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemBuilder: (context, index) {
                      return index >= state.messages.length
                          ? GuildMessageLoaderOrEndIndicator()
                          : MessageItem(message: state.messages[index]);
                    },
                    itemCount: state.messages.length + 1,
                    controller: _controller,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GuildMessageInput(),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
          orElse: () => CenterLoadingIndicator(),
        );
      },
    );
  }
}
