import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/application/guilds/leave_guild/leave_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/guild/guild_actions_container.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/guild/guild_info_container.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

class GuildSettingsSheet extends StatelessWidget {
  final Guild guild;
  final GuildListCubit cubit;
  const GuildSettingsSheet({
    Key? key,
    required this.guild,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LeaveGuildCubit>(),
      child: _GuildSettingsSheet(
        guild: guild,
        cubit: cubit,
      ),
    );
  }
}

class _GuildSettingsSheet extends StatelessWidget {
  final current = getCurrentUser();
  final Guild guild;
  final GuildListCubit cubit;
  _GuildSettingsSheet({
    Key? key,
    required this.guild,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOwner = current.id == guild.ownerId;

    return BlocListener<LeaveGuildCubit, LeaveGuildState>(
      listener: (_, state) {
        state.maybeMap(
          leaveFailure: (state) {
            Navigator.of(context).pop();
            showError(
              message: state.maybeMap(
                orElse: () => "Server Error. Try again later.",
              ),
            ).show(context);
          },
          leaveSuccess: (_) {
            cubit.removeGuild(guild.id);
            Navigator.of(context).pushNamedAndRemoveUntil(
              HomeScreen.routeName,
              (route) => false,
            );
          },
          orElse: () {},
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        color: ThemeColors.appBackground,
        child: Column(
          children: [
            GuildInfoContainer(guild: guild, isOwner: isOwner),
            GuildActionsContainer(guild: guild, isOwner: isOwner),
          ],
        ),
      ),
    );
  }
}
