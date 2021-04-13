import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/delete_message/delete_message_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/channel_drawer.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/chat_layout.dart';
import 'package:valkyrie_app/presentation/main/guild/chat_screen/widgets/channel_header.dart';
import 'package:valkyrie_app/presentation/main/guild/members/member_drawer.dart';

import 'channels/hooks/channel_socket_hook.dart';

class GuildScreen extends HookWidget {
  static const routeName = '/guild';
  final Guild guild;
  const GuildScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    final channelId = context.watch<CurrentChannelCubit>().state;
    use(ChannelSocketHook(context, guild.id));

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ChannelListCubit>()..getGuildChannels(guild.id),
        ),
        BlocProvider(
          create: (context) => getIt<CreateMessageCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<UploadImageCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<CurrentlyTypingCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<DeleteMessageCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<DeleteMessageCubit, DeleteMessageState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushBarCreator.showError(
                    message: state.messageFailure.maybeMap(
                      orElse: () => 'Something went wrong. Try again later.',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<UploadImageCubit, UploadImageState>(
            listener: (context, state) {
              state.messageFailureOrSuccessOption.fold(
                () => {},
                (either) => either.fold(
                  (failure) {
                    FlushBarCreator.showError(
                      message: failure.map(
                          unexpected: (_) =>
                              'Something went wrong. Try again later.',
                          fileTooLarge: (_) =>
                              'Your image is too big. Maximum size is 5 MB'),
                    ).show(context);
                  },
                  (_) {},
                ),
              );
            },
          ),
        ],
        child: Scaffold(
          key: _drawerKey,
          appBar: AppBar(
            backgroundColor: ThemeColors.appBackground,
            title: Row(
              children: [
                const Icon(
                  Icons.tag,
                  color: Colors.white38,
                ),
                ChannelHeader(),
              ],
            ),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => _drawerKey.currentState!.openDrawer(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.people),
                onPressed: () => _drawerKey.currentState!.openEndDrawer(),
              ),
            ],
          ),
          drawer: ChannelDrawer(
            guild: guild,
          ),
          endDrawer: MemberDrawer(
            guild: guild,
          ),
          body: BlocProvider<MessagesCubit>(
            create: (context) =>
                getIt<MessagesCubit>()..getChannelMessages(channelId),
            child: ChatLayout(),
          ),
        ),
      ),
    );
  }
}
