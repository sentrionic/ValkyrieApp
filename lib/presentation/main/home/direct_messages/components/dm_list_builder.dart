import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/hooks/dm_socket_hook.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/widgets/dm_item.dart';

class DMListBuilder extends HookWidget {
  @override
  Widget build(BuildContext context) {
    use(DMSocketHook(context));
    return BlocBuilder<DMListCubit, DMListState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemBuilder: (context, index) {
                final channel = state.channels[index];
                return DMChannelItem(channel: channel);
              },
              itemCount: state.channels.length,
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
