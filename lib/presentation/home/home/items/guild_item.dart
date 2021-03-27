import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';

class GuildItem extends StatelessWidget {
  final Guild guild;

  const GuildItem({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CurrentChannelCubit>().setChannelId(guild.defaultChannel);
        Navigator.of(context).pushReplacementNamed(
          '/guild',
          arguments: GuildScreenArguments(guild),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage:
                guild.icon != null ? NetworkImage(guild.icon!) : null,
            radius: 26,
            backgroundColor: ThemeColors.guildBackground,
            child: guild.icon == null
                ? Text(
                    guild.name.getOrCrash()[0],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )
                : null,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
