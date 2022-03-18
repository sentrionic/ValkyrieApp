import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/common/extensions/date_extension.dart';
import 'package:valkyrie_app/presentation/common/widgets/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/hooks/message_socket_hook.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/hooks/scroll_controller_hook.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/widgets/date_divider.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/widgets/message_input.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/widgets/message_loader_or_end.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/widgets/typing_container.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/compact_message_item.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/message_item.dart';

class GuildChatLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return _ChatLayout(channelId);
  }
}

class DMChatLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentDMCubit>().state;
    return _ChatLayout(channelId, isDM: true);
  }
}

class _ChatLayout extends HookWidget {
  final String channelId;
  final bool isDM;
  const _ChatLayout(this.channelId, {this.isDM = false});

  @override
  Widget build(BuildContext context) {
    final _controller = useScrollControllerForLoading(context, channelId);

    use(MessageSocketHook(context, channelId));

    return Material(
      color: ThemeColors.appBackground,
      child: BlocBuilder<MessagesCubit, MessagesState>(
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
                              ? MessageLoaderOrEndIndicator(
                                  channelId: channelId,
                                  isDM: isDM,
                                )
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
                            ? const LinearProgressIndicator(
                                color: ThemeColors.themeBlue,
                              )
                            : Container();
                      },
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    if (context.watch<CurrentlyTypingCubit>().state.isNotEmpty)
                      TypingContainer()
                    else
                      const SizedBox(height: 25),
                    MessageInput(
                      channelId: channelId,
                      isDM: isDM,
                    ),
                  ],
                ),
              );
            },
            orElse: () => CenterLoadingIndicator(),
          );
        },
      ),
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
      return Column(
        children: [
          if (!isSameDay) DateDivider(date: curDate),
          CompactMessageItem(message: curMessage),
        ],
      );
    } else {
      return Column(
        children: [
          if (!isSameDay || index == messages.length - 1)
            DateDivider(date: curDate),
          MessageItem(message: messages[index]),
        ],
      );
    }
  }
}
