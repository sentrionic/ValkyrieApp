import 'package:flutter/material.dart';

import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class GuildOverviewInfoContainer extends StatelessWidget {
  final Guild guild;
  const GuildOverviewInfoContainer({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: ThemeColors.dmBackground,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                CircleAvatar(
                  backgroundImage:
                      guild.icon != null ? NetworkImage(guild.icon!) : null,
                  radius: 70,
                  backgroundColor: guild.icon == null
                      ? ThemeColors.themeBlue
                      : Colors.transparent,
                  child: guild.icon == null
                      ? Text(
                          guild.name.getOrCrash()[0],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                          ),
                        )
                      : null,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  guild.name.getOrCrash(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
