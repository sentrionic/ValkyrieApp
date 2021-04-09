import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/common/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/guild/items/compact_message_item.dart';
import 'package:valkyrie_app/presentation/guild/widgets/guild_date_divider.dart';
import 'package:valkyrie_app/presentation/guild/widgets/guild_typing_container.dart';
import 'package:valkyrie_app/presentation/guild/widgets/hooks/channel_scroller_hook.dart';
import 'package:valkyrie_app/presentation/guild/widgets/guild_message_loader_or_end.dart';

import '../../common/date_extension.dart';
import '../items/message_item.dart';
import 'guild_message_input.dart';
import 'hooks/socket_hook.dart';

class GuildChat extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    final _controller = useScrollControllerForLoading(context, channelId);

    use(MessageSocketHook(context: context, channelId: channelId));

    return BlocBuilder<MessagesCubit, MessagesState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) {
            return GestureDetector(
              onTap: () {
                final FocusScopeNode currentScope = FocusScope.of(context);
                if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
              },
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      itemBuilder: (context, index) {
                        return index >= state.messages.length
                            ? GuildMessageLoaderOrEndIndicator()
                            : _getMessage(state.messages, index);
                      },
                      itemCount: state.messages.length + 1,
                      controller: _controller,
                    ),
                  ),
                  BlocBuilder<UploadImageCubit, UploadImageState>(
                    buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
                    builder: (context, state) {
                      return state.isSubmitting
                          ? const LinearProgressIndicator()
                          : Container();
                    },
                  ),
                  if (context.watch<CurrentlyTypingCubit>().state.isNotEmpty)
                    GuildTypingContainer()
                  else
                    const SizedBox(height: 15),
                  GuildMessageInput(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            );
          },
          orElse: () => CenterLoadingIndicator(),
        );
      },
    );
  }

  Widget _getMessage(List<Message> messages, int index) {
    final indexOrLast = min(index + 1, messages.length - 1);
    final prevMessage = messages[indexOrLast];
    final curMessage = messages[index];
    final isSameAuthor = curMessage.user.id == prevMessage.user.id;

    final curDate = DateTime.parse(curMessage.createdAt);
    final prevDate = DateTime.parse(prevMessage.createdAt);
    final difference = curDate.difference(prevDate).inMinutes;
    final isSameDay = curDate.isSameDate(prevDate);

    if (difference < 10 && isSameAuthor && index != messages.length - 1) {
      return CompactMessageItem(message: curMessage);
    } else {
      return Column(
        children: [
          if (!isSameDay) GuildDateDivider(date: curDate),
          MessageItem(message: messages[index]),
        ],
      );
    }
  }
}
