import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/messages/get_messages/messages_cubit.dart';

ScrollController useScrollControllerForLoading(
  BuildContext context,
  String channelId,
) {
  const _scrollThreshold = 200.0;
  final ScrollController scrollController = ScrollController();
  scrollController.addListener(() {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      context.read<MessagesCubit>().fetchMoreMessages(channelId);
    }
  });

  return scrollController;
}
