import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/application/friends/send_friend_request/send_friend_request_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/avatar_with_badge.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';

class UserInfoContainer extends StatelessWidget {
  final Member member;
  final bool isCurrent;

  const UserInfoContainer(this.member, {required this.isCurrent});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<StartDMCubit, StartDMState>(
          listener: (context, state) {
            state.maybeMap(
              fetchSuccess: (state) {
                Navigator.of(context).popUntil((route) => route.isFirst);
                context.read<DMListCubit>().addNewDM(state.channel);
                context.read<CurrentDMCubit>().setDMChannel(state.channel.id);
                context.read<CurrentGuildCubit>().resetGuildId();
                Navigator.of(context).pushReplacementNamed(DMScreen.routeName);
              },
              fetchFailure: (state) {
                showError(
                  message: state.channelFailure.map(
                    notFound: (_) => "Could not find the member",
                    unexpected: (_) => "Something went wrong. Try again later.",
                  ),
                ).show(context);
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<SendFriendRequestCubit, SendFriendRequestState>(
          listener: (context, state) {
            state.maybeMap(
              actionSuccess: (state) {
                Navigator.of(context).pop();
                showSuccess(message: "Send friend request").show(context);
              },
              actionFailure: (state) {
                Navigator.of(context).pop();
                showError(
                  message: state.friendFailure.map(
                    badRequest: (failure) => failure.message,
                    unexpected: (_) => "Something went wrong. Try again later.",
                  ),
                ).show(context);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: ThemeColors.infoBackground,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: getAvatarWithBadge(
                      member.image,
                      isOnline: member.isOnline,
                      imageRadius: 40,
                      iconRadius: 25,
                    ),
                  ),
                  if (member.nickname != null) ...[
                    Text(
                      member.nickname!,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      member.username,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white60,
                      ),
                    ),
                  ] else
                    Text(
                      member.username,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (!isCurrent) ...[
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: InkWell(
                            splashColor: ThemeColors.buttonGray,
                            onTap: () => context
                                .read<StartDMCubit>()
                                .getOrCreateDM(member.id),
                            child: Column(
                              children: const [
                                Icon(
                                  AppIcons.commentalt,
                                  size: 22,
                                  color: Colors.white70,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Message",
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (!member.isFriend)
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                              splashColor: ThemeColors.buttonGray,
                              onTap: () => context
                                  .read<SendFriendRequestCubit>()
                                  .sendFriendRequest(member.id),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.person_add_alt_1,
                                    color: ThemeColors.brandGreen,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Add Friend",
                                    style: TextStyle(
                                      color: ThemeColors.brandGreen,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
