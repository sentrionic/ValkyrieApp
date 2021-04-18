import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/leave_guild/leave_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/create_channel/create_channel_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/appearance_screen.dart';

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
                if (isOwner)
                  _getModalButton("Create Channel", () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(
                      CreateChannelScreen.routeName,
                      arguments: GuildScreenArguments(guild),
                    );
                  }),
                const SizedBox(
                  height: 20,
                ),
                _getModalButton("Change Appearance", () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(AppearanceScreen.routeName,
                      arguments: GuildScreenArguments(guild));
                }),
                if (!isOwner) _getLeaveGuildModalButton(context),
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

  Widget _getLeaveGuildModalButton(BuildContext context) {
    return Container(
      color: ThemeColors.sheetBackground,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          final cubit = context.read<LeaveGuildCubit>();
          _showConfirmationDialog(context, cubit);
        },
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

  void _showConfirmationDialog(
    BuildContext context,
    LeaveGuildCubit cubit,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Leave '${guild.name.getOrCrash()}'",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(),
            ],
          ),
          content: Text(
            "Are you sure you want to leave ${guild.name.getOrCrash()}?",
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                cubit.leaveGuild(guild.id);
              },
              style: ElevatedButton.styleFrom(
                primary: ThemeColors.themeBlue,
              ),
              child: const Text("Leave Server"),
            ),
          ],
        );
      },
    );
  }
}
