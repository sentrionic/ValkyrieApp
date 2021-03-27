import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class DrawerInviteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ThemeColors.inviteGrey,
              ),
              onPressed: () {},
              child: const Text("Invite Members"),
            ),
          ),
        ),
      ],
    );
  }
}
