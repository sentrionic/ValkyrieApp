import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';

class GuildHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return BlocBuilder<ChannelCubit, ChannelState>(
      builder: (context, state) {
        return Text(
          context
                  .watch<ChannelCubit>()
                  .getCurrentChannel(channelId)
                  ?.name
                  .getOrCrash() ??
              "",
        );
      },
    );
  }
}
