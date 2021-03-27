import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/presentation/guild/widgets/channel_drawer_widgets/channel_item.dart';

class GuildChannelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelCubit, ChannelState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (channels) {
            return ListView.builder(
              itemExtent: 43,
              padding: const EdgeInsets.only(top: 0),
              itemBuilder: (context, index) {
                final channel = channels[index];
                return ChannelItem(channel: channel);
              },
              itemCount: channels.length,
            );
          },
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
