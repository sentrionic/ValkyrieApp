import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/delete_channel/delete_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/edit_channel/edit_channel_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/channel_settings/channel_settings_form.dart';

class ChannelSettingsScreen extends StatelessWidget {
  static const routeName = '/edit-channel';
  final Channel channel;
  final String guildId;

  const ChannelSettingsScreen({
    Key? key,
    required this.channel,
    required this.guildId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<EditChannelCubit>()..initialize(channel),
        ),
        BlocProvider(
          create: (context) => getIt<DeleteChannelCubit>(),
        ),
      ],
      child: ChannelSettingsForm(
        channel: channel,
        guildId: guildId,
      ),
    );
  }
}
