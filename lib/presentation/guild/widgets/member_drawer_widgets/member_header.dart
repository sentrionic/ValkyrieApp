import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class MemberHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return Container(
      height: 100,
      color: ThemeColors.dmBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.tag,
                  color: Colors.white38,
                ),
                Text(
                  context
                      .watch<ChannelCubit>()
                      .getCurrentChannel(channelId)
                      ?.name
                      .getOrCrash() ??
                      "",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
