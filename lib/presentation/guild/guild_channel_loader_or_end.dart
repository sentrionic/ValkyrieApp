import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';

class GuildChannelLoaderOrEndIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return BlocBuilder<MessagesCubit, MessagesState>(
      builder: (context, state) => state.maybeWhen(
        loadSuccess: (_, hasMore) => Container(
          alignment: Alignment.center,
          child: Center(
            child: SizedBox(
              width: hasMore ? 33 : double.infinity,
              height: hasMore ? 33 : 140,
              child: hasMore
                  ? const CircularProgressIndicator(
                      strokeWidth: 1.5,
                    )
                  : Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcome to #${context.watch<ChannelCubit>().getCurrentChannel(channelId)?.name.getOrCrash() ?? ""}!",
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "This is the start of the #${context.watch<ChannelCubit>().getCurrentChannel(channelId)?.name.getOrCrash() ?? ""} channel.",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white60,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
            ),
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
