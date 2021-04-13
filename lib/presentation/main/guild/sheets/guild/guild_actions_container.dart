import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/screens/appearance_screen.dart';

class GuildActionsContainer extends StatelessWidget {
  final Guild guild;
  final bool isOwner;
  const GuildActionsContainer({
    Key? key,
    required this.guild,
    required this.isOwner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: ThemeColors.dmBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                if (isOwner) _getModalButton("Create Channel", () {}),
                const SizedBox(
                  height: 20,
                ),
                _getModalButton("Change Appearance", () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(AppearanceScreen.routeName,
                      arguments: GuildScreenArguments(guild));
                }),
                if (!isOwner) _getLeaveGuildModalButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getModalButton(String label, Function onClick) {
    return Container(
      color: ThemeColors.sheetBackground,
      width: double.infinity,
      child: TextButton(
        onPressed: () => onClick(),
        style: TextButton.styleFrom(
          primary: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getLeaveGuildModalButton() {
    return Container(
      color: ThemeColors.sheetBackground,
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: ThemeColors.brandRed,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Leave Server",
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeColors.brandRed,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
