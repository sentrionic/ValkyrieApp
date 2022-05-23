import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:valkyrie_app/application/guilds/edit_guild/edit_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_screen.dart';

class EditGuildForm extends StatefulWidget {
  final Guild guild;
  const EditGuildForm({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  State<EditGuildForm> createState() => _EditGuildFormState();
}

class _EditGuildFormState extends State<EditGuildForm> {
  late final String? _initialIcon;

  @override
  void initState() {
    super.initState();
    setState(() {
      _initialIcon = widget.guild.icon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditGuildCubit, EditGuildState>(
      listener: (context, state) {
        state.guildFailureOrSuccessOption.fold(
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
              final updated = context
                  .read<GuildListCubit>()
                  .getCurrentGuild(widget.guild.id);
              Navigator.pushNamedAndRemoveUntil(
                context,
                GuildScreen.routeName,
                (route) => route.isFirst,
                arguments: GuildScreenArguments(updated!),
              );
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Overview"),
        ),
        body: Container(
          color: ThemeColors.appBackground,
          height: double.infinity,
          child: FormWrapper(
            children: [
              const SizedBox(
                height: 40,
              ),
              BlocBuilder<EditGuildCubit, EditGuildState>(
                builder: (context, state) => Stack(
                  children: [
                    GestureDetector(
                      onTap: () => _selectGuildIcon(context),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: ThemeColors.themeBlue,
                        foregroundImage:
                            (state.icon == null && _initialIcon != null)
                                ? NetworkImage(widget.guild.icon!)
                                : null,
                        child: state.icon != null
                            ? ClipOval(
                                child: Image.file(
                                  state.icon!,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Text(
                                widget.guild.name.getOrCrash()[0],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 30,
                          minHeight: 30,
                        ),
                        child: const Icon(
                          Icons.add_photo_alternate_outlined,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _initialIcon = null;
                  });
                  context.read<EditGuildCubit>().removeIcon();
                },
                child: const Text(
                  "Remove",
                  style: TextStyle(
                    color: ThemeColors.themeBlue,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                autovalidateMode:
                    context.watch<EditGuildCubit>().state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Server Name',
                      ),
                      initialValue: widget.guild.name.getOrCrash(),
                      onChanged: (value) =>
                          context.read<EditGuildCubit>().nameChanged(value),
                      validator: (_) =>
                          context.read<EditGuildCubit>().state.name.value.fold(
                                (f) => f.maybeMap(
                                  invalidChannelName: (_) =>
                                      'Server names must be between 3 and 30 characters long',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            context.read<EditGuildCubit>().submitEditGuild(widget.guild.id);
          },
          backgroundColor: ThemeColors.themeBlue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.save),
        ),
      ),
    );
  }

  Future<void> _selectGuildIcon(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      if (!mounted) return;
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        cropStyle: CropStyle.circle,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: "Guild Icon",
            toolbarColor: Theme.of(context).primaryColor,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: false,
          ),
        ],
        compressQuality: 70,
      );
      if (croppedFile != null) {
        if (!mounted) return;
        context.read<EditGuildCubit>().iconChanged(File(croppedFile.path));
      }
    }
  }
}
