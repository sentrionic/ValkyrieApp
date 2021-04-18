import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/delete_channel/delete_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/edit_channel/edit_channel_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class ChannelSettingsForm extends StatelessWidget {
  final Channel channel;
  final String guildId;

  const ChannelSettingsForm({
    Key? key,
    required this.channel,
    required this.guildId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    return MultiBlocListener(
      listeners: [
        BlocListener<EditChannelCubit, EditChannelState>(
          listener: (context, state) {
            state.channelFailureOrSuccessOption.fold(
              () => {},
              (either) => either.fold(
                (failure) {
                  FlushBarCreator.showError(
                    message: failure.maybeMap(
                      orElse: () => "Server Error. Try again later.",
                    ),
                  ).show(context);
                },
                (_) {
                  FlushBarCreator.showSuccess(
                    message: "Successfully changed channel settings",
                  ).show(context);
                },
              ),
            );
          },
        ),
        BlocListener<DeleteChannelCubit, DeleteChannelState>(
          listener: (context, state) {
            state.maybeWhen(
              deleteFailure: (state) {
                FlushBarCreator.showError(
                  message: state.maybeMap(
                      orElse: () => "Something went wrong. Try again later"),
                ).show(context);
              },
              deleteSuccess: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Channel Settings",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Text(
                "#${channel.name.getOrCrash()}",
                style: const TextStyle(color: Colors.white30, fontSize: 12.0),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: ThemeColors.brandRed,
              ),
              onPressed: () {
                final cubit = context.read<DeleteChannelCubit>();
                _showDeleteConfirmation(context, cubit);
              },
            ),
          ],
        ),
        body: BlocBuilder<EditChannelCubit, EditChannelState>(
          builder: (context, state) => Form(
            key: _key,
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: FormWrapper(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    filled: false,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    labelText: 'Channel Name',
                  ),
                  initialValue: channel.name.getOrCrash(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) =>
                      context.read<EditChannelCubit>().nameChanged(value),
                  validator: (_) =>
                      context.read<EditChannelCubit>().state.name.value.fold(
                            (f) => f.maybeMap(
                              invalidChannelName: (_) =>
                                  'Channel names must be between 3 and 30 characters',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                  onSaved: (value) {
                    context.read<EditChannelCubit>().nameChanged(value!);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.lock_outline_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Private Channel"),
                      ],
                    ),
                    Switch(
                      value: !state.isPublic,
                      onChanged: (value) => context
                          .read<EditChannelCubit>()
                          .isPublicChanged(isPublic: !value),
                      activeColor: ThemeColors.themeBlue,
                    ),
                  ],
                ),
                if (state.isPublic)
                  const Text(
                    "By making a channel private, only selected members will be able to view this channel.",
                  )
                else ...[
                  const Text(
                    "WHO CAN ACCESS THIS CHANNEL?",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Work in progress. Use the web version to add members later.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            context
                .read<EditChannelCubit>()
                .submitEditChannel(guildId, channel.id);
          },
          backgroundColor: ThemeColors.themeBlue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.save),
        ),
      ),
    );
  }

  void _showDeleteConfirmation(
    BuildContext context,
    DeleteChannelCubit cubit,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Delete Channel",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(),
            ],
          ),
          content: Text(
            "Are you sure you want to delete #${channel.name.getOrCrash()}? This cannot be undone.",
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
              onPressed: () => cubit.deleteChannel(
                guildId: guildId,
                channelId: channel.id,
              ),
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
