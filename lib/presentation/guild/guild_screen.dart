import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/delete_message/delete_message_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

import '../../injection.dart';
import 'widgets/guild_channel_header.dart';
import 'widgets/guild_chat.dart';
import 'widgets/guild_drawer.dart';
import 'widgets/guild_member_list_drawer.dart';

class GuildScreen extends HookWidget {
  final Guild guild;
  const GuildScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    final channelId = context.watch<CurrentChannelCubit>().state;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ChannelCubit>()..getGuildChannels(guild.id),
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
                GuildChannelHeader(),
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
          drawer: GuildDrawer(
            guild: guild,
          ),
          endDrawer: GuildMemberDrawer(
            guild: guild,
          ),
          body: BlocProvider<MessagesCubit>(
            create: (context) =>
                getIt<MessagesCubit>()..getChannelMessages(channelId),
            child: GuildChat(),
          ),
        ),
      ),
    );
  }
}
