import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_bloc.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_bloc.dart';
import 'package:valkyrie_app/presentation/home/widgets/dm_item.dart';
import 'package:valkyrie_app/presentation/home/widgets/guild_item.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black54,
            child: BlocBuilder<GuildListBloc, GuildListState>(
              builder: (context, state) {
                return state.maybeMap(
                  loadSuccess: (state) {
                    return ListView.builder(
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
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15.0, left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Direct Messages",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<DMListBloc, DMListState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      loadSuccess: (state) {
                        return ListView.builder(
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
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
