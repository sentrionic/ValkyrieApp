import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/application/channels/currently_typing/currently_typing_cubit.dart';
import 'package:valkyrie_app/application/messages/create_message/create_message_cubit.dart';
import 'package:valkyrie_app/application/messages/delete_message/delete_message_cubit.dart';
import 'package:valkyrie_app/application/messages/upload_image/upload_image_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/guild_layout.dart';

class GuildScreen extends HookWidget {
  static const routeName = '/guild';
  final Guild guild;
  const GuildScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  showError(
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
                    showError(
                      message: failure.map(
                        badRequest: (failure) => failure.message,
                        unexpected: (_) =>
                            'Something went wrong. Try again later.',
                        fileTooLarge: (_) =>
                            'Your image is too big. Maximum size is 5 MB',
                      ),
                    ).show(context);
                  },
                  (_) {},
                ),
              );
            },
          ),
        ],
        child: GuildLayout(
          guild: guild,
        ),
      ),
    );
  }
}
