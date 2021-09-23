import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/delete_guild/delete_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/application/guilds/invalidate_invites/invalidate_invites_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/show_confirmation_dialog.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/guild_overview/widgets/guild_overview_actions.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/guild_overview/widgets/guild_overview_info_container.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

enum _PopupActions { delete }

class GuildOverviewForm extends StatelessWidget {
  final Guild guild;
  const GuildOverviewForm({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DeleteGuildCubit, DeleteGuildState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                Navigator.of(context).pop();
                showError(
                  message: state.maybeMap(
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(context);
              },
              deleteSuccess: (_) {
                context.read<GuildListCubit>().removeGuild(guild.id);
                Navigator.of(context).pushNamedAndRemoveUntil(
                  HomeScreen.routeName,
                  (route) => false,
                );
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<InvalidateInvitesCubit, InvalidateInvitesState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                showError(
                  message: state.maybeMap(
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(context);
              },
              deleteSuccess: (_) {
                showSuccess(
                  message: "Successfully deleted all invites.",
                ).show(context);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Server Settings"),
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                if (value == _PopupActions.delete) {
                  showConfirmationDialog(
                    context,
                    title: "Delete '${guild.name.getOrCrash()}'",
                    body:
                        "Are you sure you want to delete '${guild.name.getOrCrash()}' ? This action cannot be undone.",
                    buttonPrompt: "Delete",
                    buttonColor: ThemeColors.brandRed,
                    onSubmit: () =>
                        context.read<DeleteGuildCubit>().deleteGuild(guild.id),
                  );
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: _PopupActions.delete,
                  child: Text("Delete Server"),
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            GuildOverviewInfoContainer(guild: guild),
            GuildOverviewActions(guild: guild),
          ],
        ),
      ),
    );
  }
}
