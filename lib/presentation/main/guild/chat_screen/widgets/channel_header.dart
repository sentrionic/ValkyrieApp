import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/get_channel_name.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';

class ChannelHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return Row(
      children: [
        const Icon(
          AppIcons.hashtag,
          color: Colors.white38,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          getChannelName(context, channelId),
        ),
      ],
    );
  }
}
