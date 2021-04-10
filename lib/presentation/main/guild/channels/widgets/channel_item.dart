import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';

class ChannelItem extends StatelessWidget {
  final Channel channel;
  const ChannelItem({Key? key, required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: -2,
          ),
          tileColor: channelId == channel.id
              ? Colors.white10
              : Colors.transparent,
          title: Row(
            children: [
              const Icon(
                Icons.tag,
                color: Colors.white38,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                channel.name.getOrCrash(),
                style: TextStyle(
                  fontSize: 16,
                  color: channelId == channel.id
                      ? Colors.white
                      : Colors.white38,
                ),
              ),
            ],
          ),
          onTap: () => context
              .read<CurrentChannelCubit>()
              .setChannelId(channel.id),
        ),
      ),
    );
  }
}
