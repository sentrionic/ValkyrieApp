import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/create_channel/create_channel_cubit.dart';

import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/create_channel/create_channel_form.dart';

class CreateChannelScreen extends StatelessWidget {
  static const routeName = '/create-channel';
  final Guild guild;

  const CreateChannelScreen({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreateChannelCubit>(),
      child: CreateChannelForm(guild: guild),
    );
  }
}
