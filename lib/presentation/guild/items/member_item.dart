import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/member/member.dart';

class MemberItem extends StatelessWidget {
  final Member member;

  const MemberItem({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(member.image),
            radius: 17,
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
                minWidth: 12,
                minHeight: 12,
              ),
            ),
          )
        ],
      ),
      title: Row(
        children: [
          Text(
            member.username,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
