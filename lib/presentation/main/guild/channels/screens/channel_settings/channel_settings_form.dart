import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/delete_channel/delete_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/edit_channel/edit_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/get_private_channel_members/get_private_channel_members_cubit.dart';
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/common/widgets/show_confirmation_dialog.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/channel_settings/member_settings_select_form.dart';

enum _PopupActions { delete }

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
                  showError(
                    message: failure.maybeMap(
                      orElse: () => "Server Error. Try again later.",
                    ),
                  ).show(context);
                },
                (_) {
                  showSuccess(
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
                showError(
                  message: state.maybeMap(
                    badRequest: (failure) => failure.message,
                    orElse: () => "Something went wrong. Try again later",
                  ),
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
            PopupMenuButton(
              onSelected: (value) {
                if (value == _PopupActions.delete) {
                  showConfirmationDialog(
                    context,
                    title: "Delete '${channel.name.getOrCrash()}'",
                    body:
                        "Are you sure you want to delete '${channel.name.getOrCrash()}' ? This action cannot be undone.",
                    buttonPrompt: "Delete",
                    buttonColor: ThemeColors.brandRed,
                    onSubmit: () => context
                        .read<DeleteChannelCubit>()
                        .deleteChannel(channel.id),
                  );
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: _PopupActions.delete,
                  child: Text("Delete Channel"),
                ),
              ],
            )
          ],
        ),
        body: Container(
          color: ThemeColors.appBackground,
          height: double.infinity,
          child: BlocBuilder<EditChannelCubit, EditChannelState>(
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
                    MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (context) => getIt<MemberListCubit>()
                            ..getGuildMembers(guildId),
                        ),
                        BlocProvider(
                          create: (context) =>
                              getIt<GetPrivateChannelMembersCubit>()
                                ..getPrivateChannelMembers(channel.id),
                        ),
                      ],
                      child: MemberSettingsSelectForm(),
                    ),
                  ]
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            context.read<EditChannelCubit>().submitEditChannel(channel.id);
          },
          backgroundColor: ThemeColors.themeBlue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.save),
        ),
      ),
    );
  }
}
