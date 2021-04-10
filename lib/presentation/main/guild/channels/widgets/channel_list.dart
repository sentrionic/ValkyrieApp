import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_cubit.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/channel_item.dart';

class ChannelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelCubit, ChannelState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (channels) {
            return ListView.builder(
              itemExtent: 43,
              // ignore: avoid_redundant_argument_values
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
