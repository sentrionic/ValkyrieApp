import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/presentation/common/widgets/widget_constants.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/add_guild_icon.dart';

import 'package:valkyrie_app/presentation/main/shared/guild_item.dart';

class GuildListWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final guildId = context.read<CurrentGuildCubit>().state;
    final index = context.read<GuildListCubit>().getCurrentIndex(guildId);
    final _controller = useScrollController(
      initialScrollOffset:
          index.toDouble() * WidgetConstants.avatarContainerBorderRadius,
    );

    return BlocBuilder<GuildListCubit, GuildListState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (state) {
            return ListView.builder(
              controller: _controller,
              padding: const EdgeInsets.only(top: 5),
              itemBuilder: (context, index) {
                if (index == state.guilds.length) {
                  return AddGuildIcon();
                } else {
                  final guild = state.guilds[index];
                  return GuildItem(guild: guild);
                }
              },
              itemCount: state.guilds.length + 1,
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
