import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/create_guild/create_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_screen.dart';

class CreateGuildForm extends StatelessWidget {
  final current = getCurrentUser();
  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    return BlocListener<CreateGuildCubit, CreateGuildState>(
      listener: (context, state) {
        state.guildFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
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
        body: BlocBuilder<CreateGuildCubit, CreateGuildState>(
          builder: (context, state) => Container(
            color: ThemeColors.appBackground,
            height: double.infinity,
            child: Form(
              key: _key,
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: FormWrapper(
                children: [
                  const Text(
                    "Create Your Server",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Your server is where you and your friends hang out. Make yours and start talking.",
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
                            labelText: 'Server Name',
                          ),
                          initialValue:
                              "${current.username.getOrCrash()}'s server",
                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                          onChanged: (value) => context
                              .read<CreateGuildCubit>()
                              .nameChanged(value),
                          onSaved: (value) => context
                              .read<CreateGuildCubit>()
                              .nameChanged(value!),
                          validator: (_) => context
                              .read<CreateGuildCubit>()
                              .state
                              .name
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidChannelName: (_) =>
                                      'Guild names must be between 3 and 30 characters',
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
                              _key.currentState?.save();
                              context
                                  .read<CreateGuildCubit>()
                                  .submitCreateGuild();
                            },
                            child: const Text(
                              "Create Server",
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
