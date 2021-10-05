import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/members/ban_list/ban_list_cubit.dart';
import 'package:valkyrie_app/application/members/unban_user/unban_user_cubit.dart';

import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class ManageBansForm extends StatelessWidget {
  final Guild guild;
  const ManageBansForm({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<UnbanUserCubit, UnbanUserState>(
      listener: (context, state) {
        state.maybeMap(
          unbanFailure: (state) {
            showError(
              message: state.failure.map(
                badRequest: (failure) => failure.message,
                unexpected: (_) => "Something went wrong, try again later.",
              ),
            ).show(context);
          },
          unbanSuccess: (state) {
            context.read<BanListCubit>().removeBan(state.memberId);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Bans",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Text(
                guild.name.getOrCrash(),
                style: const TextStyle(
                  color: Colors.white30,
                  fontSize: 14.0,
                ),
              )
            ],
          ),
        ),
        body: Container(
          color: ThemeColors.appBackground,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: BlocBuilder<BanListCubit, BanListState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      loadSuccess: (fetch) {
                        if (fetch.members.isNotEmpty) {
                          return ListView.builder(
                            itemBuilder: (context, index) {
                              final ban = fetch.members[index];
                              return Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      foregroundImage: NetworkImage(ban.image),
                                    ),
                                    title: Text(ban.username),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.clear),
                                      onPressed: () => context
                                          .read<UnbanUserCubit>()
                                          .unbanMember(
                                            guild.id,
                                            ban.id,
                                          ),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Divider(),
                                  ),
                                ],
                              );
                            },
                            itemCount: fetch.members.length,
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  AppIcons.hammer,
                                  size: 50,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "You haven't banned anybody... but if and when you must, do not hesitate!",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      orElse: () => CenterLoadingIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
