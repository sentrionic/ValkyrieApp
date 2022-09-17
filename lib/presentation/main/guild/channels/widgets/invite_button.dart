import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/invite_screen.dart';

class InviteButton extends StatelessWidget {
  final Guild guild;
  const InviteButton({super.key, required this.guild});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ThemeColors.inviteGrey,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  InviteScreen.routeName,
                  arguments: GuildScreenArguments(guild),
                );
              },
              child: const Text("Invite Members"),
            ),
          ),
        ),
      ],
    );
  }
}
