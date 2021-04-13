import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/application/friends/send_friend_request/send_friend_request_cubit.dart';

import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class UserInfoContainer extends StatelessWidget {
  final Member member;
  final bool isCurrent;

  const UserInfoContainer(this.member, {required this.isCurrent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: ThemeColors.dmBackground,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(member.image),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: member.isOnline ? Colors.green : Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 30,
                            minHeight: 30,
                          ),
                        ),
                      )
                    ],
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
                              Icon(Icons.chat_bubble),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Message"),
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
    );
  }
}
