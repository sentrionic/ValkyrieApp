import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/guild/guild_settings_sheet.dart';

class ChannelDrawerHeader extends StatelessWidget {
  final Guild guild;

  const ChannelDrawerHeader({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            guild.name.getOrCrash(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (_) {
                  return GuildSettingsSheet(
                    guild: guild,
                    cubit: context.read<GuildListCubit>(),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
