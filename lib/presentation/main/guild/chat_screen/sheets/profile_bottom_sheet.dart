import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class ProfileBottomSheet extends StatelessWidget {
  final current = getCurrentUser();
  final Member member;
  final Guild guild;
  ProfileBottomSheet({
    Key? key,
    required this.member,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOwner = current.id == guild.ownerId;
    final isCurrent = current.id == member.id;

    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      color: ThemeColors.sheetBackground,
      child: Column(
        children: [
          Row(
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
                                  color: member.isOnline
                                      ? Colors.green
                                      : Colors.grey,
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
                                onTap: () {},
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
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: InkWell(
                                splashColor: ThemeColors.buttonGray,
                                onTap: () {},
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
          if (isOwner && !isCurrent)
            Expanded(
              child: Container(
                width: double.infinity,
                color: ThemeColors.accountForm,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          guild.name.getOrCrash(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white38,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _getModalButton("Kick", Icons.person_remove, () {}),
                        _getModalButton(
                            "Ban", Icons.remove_circle_outline, () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          if (isCurrent)
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("This is you!"),
            )
        ],
      ),
    );
  }

  Widget _getModalButton(String label, IconData icon, Function onClick) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () => onClick(),
        style: TextButton.styleFrom(
          primary: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  size: 28,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
