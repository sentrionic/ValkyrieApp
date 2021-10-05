import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/application/guilds/join_guild/join_guild_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_screen.dart';

class JoinGuildForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<JoinGuildCubit, JoinGuildState>(
      listener: (context, state) {
        state.guildFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  badRequest: (failure) => failure.message,
                  orElse: () => "Server Error. Try again later.",
                ),
              ).show(context);
            },
            (guild) {
              context
                  .read<CurrentChannelCubit>()
                  .setChannelId(guild.defaultChannel);
              context.read<CurrentGuildCubit>().setGuildlId(guild.id);
              context.read<GuildListCubit>().addNewGuild(guild);

              Navigator.of(context).pushNamedAndRemoveUntil(
                GuildScreen.routeName,
                (route) => false,
                arguments: GuildScreenArguments(guild),
              );
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColors.appBackground,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: BlocBuilder<JoinGuildCubit, JoinGuildState>(
          builder: (context, state) => Container(
            color: ThemeColors.appBackground,
            height: double.infinity,
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: FormWrapper(
                children: [
                  const Text(
                    "Do you have an invite?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Get the most out of Valkyrie by joining a server.",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Invite link',
                          ),
                          textInputAction: TextInputAction.done,
                          style: const TextStyle(fontSize: 18),
                          autocorrect: false,
                          onChanged: (value) =>
                              context.read<JoinGuildCubit>().linkChanged(value),
                          validator: (_) => context
                              .read<JoinGuildCubit>()
                              .state
                              .inviteLink
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) =>
                                      'An invite link or code is required',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "INVITES SHOULD LOOK LIKE",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "hTKzmak",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "https://valkyrieapp.xyz/hTKzmak",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ThemeColors.themeBlue,
                            ),
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              context.read<JoinGuildCubit>().submitJoinGuild();
                            },
                            child: const Text(
                              "Join",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
