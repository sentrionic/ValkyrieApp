import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/get_channel_name.dart';

class MessageLoaderOrEndIndicator extends StatelessWidget {
  final String channelId;
  final bool isDM;
  const MessageLoaderOrEndIndicator({
    Key? key,
    required this.channelId,
    this.isDM = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessagesCubit, MessagesState>(
      builder: (context, state) => state.maybeWhen(
        loadSuccess: (_, hasMore) => Container(
          alignment: Alignment.center,
          child: Center(
            child: SizedBox(
              width: hasMore ? 33 : double.infinity,
              height: hasMore ? 33 : _getContainerHeight(isDM),
              child: hasMore
                  ? const CircularProgressIndicator(
                      strokeWidth: 1.5,
                    )
                  : _getEndIndicator(context, channelId, isDM),
            ),
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }

  double _getContainerHeight(bool needBiggerHeight) {
    return needBiggerHeight ? 230 : 120;
  }

  Widget _getEndIndicator(
    BuildContext context,
    String channelId,
    bool isDM,
  ) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          if (isDM)
            _getDMEndIndicator(context, channelId)
          else
            _getChannelEndIndicator(context, channelId),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Widget _getChannelEndIndicator(BuildContext context, String channelId) {
    final channelName = getChannelName(context, channelId);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome to #$channelName!",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "This is the start of the #$channelName channel.",
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }

  Widget _getDMEndIndicator(BuildContext context, String channelId) {
    final channel = context.read<DMListCubit>().getCurrentDM(channelId);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage:
              channel != null ? NetworkImage(channel.user.image) : null,
          radius: 42,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          channel?.user.username.toUpperCase() ?? "",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "This is the beginning of your direct message history with @${channel?.user.username}.",
          style: const TextStyle(
            color: Colors.white38,
          ),
        ),
      ],
    );
  }
}
