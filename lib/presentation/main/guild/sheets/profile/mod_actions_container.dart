import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/members/moderate_member/moderate_member_cubit.dart';

import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/get_modal_button.dart';
import 'package:valkyrie_app/presentation/common/widgets/show_confirmation_dialog.dart';
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
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              getModalButton(
                "Kick",
                Icons.person_remove,
                () => showConfirmationDialog(
                  context,
                  title: "Kick ${member.username}".toUpperCase(),
                  body:
                      "Are you sure you want to kick ${member.username}? They will be able to rejoin again with a new invite.",
                  buttonPrompt: "Confirm",
                  buttonColor: ThemeColors.brandRed,
                  onSubmit: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    return cubit.kickMember(guild.id, member.id);
                  },
                ),
                ThemeColors.brandRed,
              ),
              getModalButton(
                "Ban",
                AppIcons.hammer,
                () => showConfirmationDialog(
                  context,
                  title: "Ban ${member.username}".toUpperCase(),
                  body:
                      "Are you sure you want to ban ${member.username}? They won't be able to return unless you unban them.",
                  buttonPrompt: "Confirm",
                  buttonColor: ThemeColors.brandRed,
                  onSubmit: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    return cubit.banMember(guild.id, member.id);
                  },
                ),
                ThemeColors.brandRed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
