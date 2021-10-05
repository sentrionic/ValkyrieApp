import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/guilds/get_invite_link/get_invite_link_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class InviteScreen extends StatelessWidget {
  static const routeName = '/invite-members';
  final Guild guild;

  const InviteScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetInviteLinkCubit>()..getInviteLink(guild.id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Invite People"),
        ),
        body: _InviteScreenForm(
          guildId: guild.id,
        ),
      ),
    );
  }
}

class _InviteScreenForm extends HookWidget {
  final String guildId;

  const _InviteScreenForm({Key? key, required this.guildId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final switchState = useState(false);
    return Container(
      color: ThemeColors.appBackground,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Send a server invite link to a friend"),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 45,
                    child: BlocBuilder<GetInviteLinkCubit, GetInviteLinkState>(
                      builder: (context, state) => state.maybeMap(
                        fetchSuccess: (fetch) {
                          return OutlinedButton(
                            onPressed: () => _copyToClipboard(
                              context,
                              fetch.inviteLink,
                            ),
                            child: Text(
                              fetch.inviteLink,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          );
                        },
                        orElse: () => OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Getting your link...",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            switchState.value
                ? "Your invite won't expire"
                : "Your invite link expires in 1 day and can only be used once",
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Make it unlimited / Never reset",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Switch(
                  activeColor: ThemeColors.themeBlue,
                  value: switchState.value,
                  onChanged: (value) {
                    switchState.value = value;
                    context.read<GetInviteLinkCubit>().getInviteLink(
                          guildId,
                          isPermanent: switchState.value,
                        );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String link) {
    Clipboard.setData(
      ClipboardData(text: link),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          "Copied the link to your clipboard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: ThemeColors.inputBackground,
        duration: Duration(seconds: 3),
      ),
    );
  }
}
