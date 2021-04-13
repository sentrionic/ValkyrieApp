import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/members/moderate_member/moderate_member_cubit.dart';

import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class ModActionsContainer extends StatelessWidget {
  final Guild guild;
  final Member member;
  const ModActionsContainer(this.guild, this.member);
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ModerateMemberCubit>();
    return Expanded(
      child: Container(
        width: double.infinity,
        color: ThemeColors.accountForm,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  guild.name.getOrCrash(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white38,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                _getModalButton(
                  "Kick",
                  Icons.person_remove,
                  () => _showConfirmationDialog(context, cubit, isBan: false),
                ),
                _getModalButton(
                  "Ban",
                  Icons.remove_circle_outline,
                  () => _showConfirmationDialog(context, cubit, isBan: true),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getModalButton(String label, IconData icon, Function onClick) {
    return SizedBox(
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
                Icon(
                  icon,
                  size: 28,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
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
    ModerateMemberCubit cubit, {
    required bool isBan,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${isBan ? "Ban" : "Kick"} '${member.username}'".toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(),
            ],
          ),
          content: Text(
            "Are you sure you want to ${isBan ? "ban" : "kick"} ${member.username}? ${isBan ? "They won't be able to return unless you unban them" : "They will be able to rejoin again with a new invite"}.",
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
                if (isBan) {
                  cubit.banMember(guild.id, member.id);
                } else {
                  cubit.kickMember(guild.id, member.id);
                }

                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                primary: ThemeColors.brandRed,
              ),
              child: const Text("Confirm"),
            ),
          ],
        );
      },
    );
  }
}
