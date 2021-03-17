import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_bloc.dart';

import '../items/guild_item.dart';

class GuildListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GuildListBloc, GuildListState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 5),
              itemBuilder: (context, index) {
                final guild = state.guilds[index];
                return GuildItem(guild: guild);
              },
              itemCount: state.guilds.length,
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
