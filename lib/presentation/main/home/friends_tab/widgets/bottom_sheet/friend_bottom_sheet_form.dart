import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/application/friends/remove_friend/remove_friend_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/avatar_with_badge.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';

class FriendBottomSheetForm extends StatelessWidget {
  final Friend friend;
  const FriendBottomSheetForm({
    Key? key,
    required this.friend,
  }) : super(key: key);

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
                Navigator.of(context).pushReplacementNamed(DMScreen.routeName);
              },
              fetchFailure: (state) {
                showError(
                  message: state.channelFailure.map(
                    notFound: (_) => "Could not find the friend",
                    unexpected: (_) => "Something went wrong. Try again later.",
                  ),
                ).show(context);
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<RemoveFriendCubit, RemoveFriendState>(
          listener: (context, state) {
            state.maybeMap(
              actionSuccess: (state) {
                Navigator.of(context).pop();
                showSuccess(message: "Removed user").show(context);
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
                    padding: const EdgeInsets.all(15),
                    child: getAvatarWithBadge(
                      friend.image,
                      isOnline: friend.isOnline,
                      imageRadius: 40,
                      iconRadius: 25,
                    ),
                  ),
                  Text(
                    friend.username,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: InkWell(
                          splashColor: ThemeColors.buttonGray,
                          onTap: () {
                            context
                                .read<StartDMCubit>()
                                .getOrCreateDM(friend.id);
                          },
                          child: Column(
                            children: const [
                              Icon(
                                AppIcons.commentalt,
                                size: 22,
                                color: Colors.white54,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Message",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: InkWell(
                          splashColor: ThemeColors.buttonGray,
                          onTap: () => context
                              .read<RemoveFriendCubit>()
                              .removeFriend(friend.id),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.person_remove_alt_1,
                                color: ThemeColors.brandRed,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Remove Friend",
                                style: TextStyle(
                                  color: ThemeColors.brandRed,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
