import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/delete_guild/delete_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/application/guilds/invalidate_invites/invalidate_invites_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/edit_guild/edit_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/manage_bans/manage_bans_screen.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';

enum PopupActions { delete }

class GuildSettingsForm extends StatelessWidget {
  final Guild guild;
  const GuildSettingsForm({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DeleteGuildCubit, DeleteGuildState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                Navigator.of(context).pop();
                FlushBarCreator.showError(
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
                FlushBarCreator.showError(
                  message: state.maybeMap(
                    orElse: () => "Server Error. Try again later.",
                  ),
                ).show(context);
              },
              deleteSuccess: (_) {
                FlushBarCreator.showSuccess(
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
                if (value == PopupActions.delete) {
                  final cubit = context.read<DeleteGuildCubit>();
                  _showConfirmationDialog(context, cubit);
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: PopupActions.delete,
                  child: Text("Delete Server"),
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: ThemeColors.dmBackground,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        CircleAvatar(
                          backgroundImage: guild.icon != null
                              ? NetworkImage(guild.icon!)
                              : null,
                          radius: 75,
                          backgroundColor: ThemeColors.themeBlue,
                          child: guild.icon == null
                              ? Text(
                                  guild.name.getOrCrash()[0],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                  ),
                                )
                              : null,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          guild.name.getOrCrash(),
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
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
                    _getModalButton(
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
                    _getModalButton(
                      "Clear Invites",
                      AppIcons.link,
                      () => context.read<InvalidateInvitesCubit>()
                        ..invalidateInvites(guild.id),
                    ),
                    _getModalButton(
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
            ),
          ],
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
                  size: 24,
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
    DeleteGuildCubit cubit,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delete '${guild.name.getOrCrash()}'",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(),
            ],
          ),
          content: Text(
            "Are you sure you want to delete ${guild.name.getOrCrash()}? This action cannot be undone.",
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
                cubit.deleteGuild(guild.id);
              },
              style: ElevatedButton.styleFrom(
                primary: ThemeColors.brandRed,
              ),
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }
}
