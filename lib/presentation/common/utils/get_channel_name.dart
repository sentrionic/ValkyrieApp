import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_cubit.dart';

String getChannelName(BuildContext context, String channelId) {
  return context
          .watch<ChannelCubit>()
          .getCurrentChannel(channelId)
          ?.name
          .getOrCrash() ??
      "";
}
