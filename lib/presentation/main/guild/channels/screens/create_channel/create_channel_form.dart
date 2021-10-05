import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/create_channel/create_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/create_channel/member_select_form.dart';

class CreateChannelForm extends StatelessWidget {
  final Guild guild;
  const CreateChannelForm({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateChannelCubit, CreateChannelState>(
      listener: (context, state) {
        state.channelFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  badRequest: (err) => err.message,
                  orElse: () => "Server Error. Try again later.",
                ),
              ).show(context);
            },
            (channel) {
              context.read<CurrentChannelCubit>().setChannelId(channel.id);
              Navigator.of(context).pop();
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Create Channel"),
            actions: [
              IconButton(
                icon: const Icon(Icons.check),
                onPressed: () =>
                    context.read<CreateChannelCubit>().createChannel(guild.id),
              ),
            ],
          ),
          body: Container(
            color: ThemeColors.appBackground,
            height: double.infinity,
            child: Form(
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
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) =>
                        context.read<CreateChannelCubit>().nameChanged(value),
                    validator: (_) => context
                        .read<CreateChannelCubit>()
                        .state
                        .name
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidChannelName: (_) =>
                                'Channel names must be between 3 and 30 characters',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
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
                            .read<CreateChannelCubit>()
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
                    BlocProvider(
                      create: (context) =>
                          getIt<MemberListCubit>()..getGuildMembers(guild.id),
                      child: MemberSelectForm(),
                    ),
                  ]
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
