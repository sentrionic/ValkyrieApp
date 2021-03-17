import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_bloc.dart';
import 'package:valkyrie_app/presentation/home/home/items/dm_item.dart';

class DMListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DMListBloc, DMListState>(
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
