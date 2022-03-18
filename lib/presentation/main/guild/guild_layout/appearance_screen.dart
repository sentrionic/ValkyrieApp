import 'package:cyclop/cyclop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/guilds/get_appearance/get_appearance_cubit.dart';
import 'package:valkyrie_app/application/members/change_appearance/change_appearance_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/extensions/hex_color_extension.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class AppearanceScreen extends StatelessWidget {
  static const routeName = '/change-appearance';
  final Guild guild;

  const AppearanceScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<GetAppearanceCubit>()..getGuildAppearance(guild.id),
        ),
        BlocProvider(
          create: (context) => getIt<ChangeAppearanceCubit>(),
        ),
      ],
      child: _AppearanceScreenFormProvider(guild: guild),
    );
  }
}

class _AppearanceScreenFormProvider extends StatelessWidget {
  final Guild guild;

  const _AppearanceScreenFormProvider({Key? key, required this.guild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAppearanceCubit, GetAppearanceState>(
      builder: (context, state) => state.maybeMap(
        loadSuccess: (settings) {
          return _AppearanceScreenForm(
            guild: guild,
            appearance: settings.appearance,
          );
        },
        orElse: () => CenterLoadingIndicator(),
      ),
    );
  }
}

class _AppearanceScreenForm extends HookWidget {
  final Guild guild;
  final GuildAppearance appearance;

  const _AppearanceScreenForm({
    Key? key,
    required this.guild,
    required this.appearance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    final _controller = useTextEditingController();
    if (appearance.nickname != null && _controller.text.isEmpty) {
      _controller.text = appearance.nickname!.getOrCrash();
      context
          .read<ChangeAppearanceCubit>()
          .nicknameChanged(appearance.nickname!.getOrCrash());
    }
    if (appearance.color != null) {
      context
          .read<ChangeAppearanceCubit>()
          .colorChanged(appearance.color!.getOrCrash());
    }
    return BlocListener<ChangeAppearanceCubit, ChangeAppearanceState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  orElse: () => "Server Error. Try again later.",
                ),
              ).show(context);
            },
            (_) {
              Navigator.of(context).pop();
              showSuccess(message: "Successfully changed your appearance")
                  .show(context);
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Change Appearance"),
          actions: [
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                if (_key.currentState!.validate()) {
                  _key.currentState?.save();
                  FocusScope.of(context).unfocus();
                  context.read<ChangeAppearanceCubit>().submitChanges(guild.id);
                }
              },
            ),
          ],
        ),
        body: BlocBuilder<ChangeAppearanceCubit, ChangeAppearanceState>(
          builder: (context, state) {
            final color = state.hexColor?.getOrCrash();
            return Container(
              color: ThemeColors.appBackground,
              child: Form(
                key: _key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "NICKNAME",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _controller,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          context
                              .read<ChangeAppearanceCubit>()
                              .nicknameChanged(value);
                        } else {
                          context.read<ChangeAppearanceCubit>().resetNickname();
                        }
                      },
                      onSaved: (value) {
                        if (value != null && value.isNotEmpty) {
                          context
                              .read<ChangeAppearanceCubit>()
                              .nicknameChanged(value);
                        }
                      },
                      validator: (value) {
                        if (value != null) {
                          if (value.length < 3 && value.isNotEmpty) {
                            return "Nickname too short";
                          } else if (value.length > 32) {
                            return "Nickname too long";
                          }
                        }
                        return null;
                      },
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "COLOR",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ColorButton(
                            color:
                                color != null ? HexColor(color) : Colors.white,
                            config: const ColorPickerConfig(
                              enableEyePicker: false,
                              enableOpacity: false,
                            ),
                            size: 38,
                            onColorChanged: (newColor) {
                              context
                                  .read<ChangeAppearanceCubit>()
                                  .colorChanged(
                                    "#${newColor.value.toRadixString(16).substring(2)}",
                                  );
                            },
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              _controller.text = "";
                              context
                                  .read<ChangeAppearanceCubit>()
                                  .resetNickname();
                            },
                            child: const Text(
                              "Reset Nickname",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () => context
                                .read<ChangeAppearanceCubit>()
                                .resetColor(),
                            child: const Text(
                              "Reset Color",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
