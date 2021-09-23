import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/presentation/common/widgets/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/channel_item.dart';

class ChannelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelListCubit, ChannelListState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (channels) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final channel = channels[index];
                return ChannelItem(channel: channel);
              },
              itemCount: channels.length,
            );
          },
          orElse: () => CenterLoadingIndicator(),
        );
      },
    );
  }
}
