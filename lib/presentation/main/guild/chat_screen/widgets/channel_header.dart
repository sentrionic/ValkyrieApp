import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/get_channel_name.dart';

class ChannelHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return BlocBuilder<ChannelListCubit, ChannelListState>(
      builder: (context, state) {
        return Text(
          getChannelName(context, channelId),
        );
      },
    );
  }
}
