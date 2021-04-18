import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/current_guild_pill.dart';

class GuildItem extends StatelessWidget {
  final Guild guild;
  static const double pillWidth = 7.0;

  const GuildItem({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final guildId = context.watch<CurrentGuildCubit>().state;
    final current = guildId == guild.id;
    final hasNotification = guild.hasNotification;
    context.read<GuildListCubit>().clearNotification(guildId);

    return GestureDetector(
      onTap: () {
        context.read<CurrentChannelCubit>().setChannelId(guild.defaultChannel);
        context.read<CurrentGuildCubit>().setGuildlId(guild.id);
        Navigator.of(context).pushReplacementNamed(
          GuildScreen.routeName,
          arguments: GuildScreenArguments(guild),
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _getGuildPill(
                  hasNotification: hasNotification, isCurrent: current),
              if (current)
                Container(
                  height: 52,
                  width: 52,
                  decoration: const BoxDecoration(
                    color: ThemeColors.themeBlue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: guild.icon != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(guild.icon!),
                        )
                      : Center(
                          child: Text(
                            guild.name.getOrCrash()[0],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                )
              else
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
                width: pillWidth,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _getGuildPill({
    required bool hasNotification,
    required bool isCurrent,
  }) {
    if (isCurrent) {
      return CurrentGuildPill();
    } else if (hasNotification) {
      return Container(
        width: pillWidth,
        height: 10,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
      );
    } else {
      return const SizedBox(
        width: pillWidth,
      );
    }
  }
}
