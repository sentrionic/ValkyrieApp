import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/invalidate_invites/invalidate_invites_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/get_modal_button.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/edit_guild/edit_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/manage_bans/manage_bans_screen.dart';

class GuildOverviewActions extends StatelessWidget {
  final Guild guild;
  const GuildOverviewActions({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: ThemeColors.accountForm,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "SETTINGS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
            getModalButton(
              "Overview",
              AppIcons.infocircle,
              () => Navigator.of(context).pushNamed(
                EditGuildScreen.routeName,
                arguments: GuildScreenArguments(guild),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "USER MANAGEMENT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
            getModalButton(
              "Clear Invites",
              AppIcons.link,
              () => context.read<InvalidateInvitesCubit>()
                ..invalidateInvites(guild.id),
            ),
            getModalButton(
              "Bans",
              AppIcons.hammer,
              () => Navigator.of(context).pushNamed(
                ManageBansScreen.routeName,
                arguments: GuildScreenArguments(guild),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
