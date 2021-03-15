import 'package:flutter/material.dart';

import 'package:valkyrie_app/domain/guilds/guild.dart';

class GuildItem extends StatelessWidget {
  final Guild guild;

  const GuildItem({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage:
              guild.icon != null ? NetworkImage(guild.icon.toString()) : null,
          radius: 30,
          backgroundColor: const Color(0xff36393f),
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
        )
      ],
    );
  }
}
