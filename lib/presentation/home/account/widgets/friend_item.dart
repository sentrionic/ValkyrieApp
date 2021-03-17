import 'dart:math';

import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';

class FriendItem extends StatelessWidget {
  final Friend friend;

  const FriendItem({
    Key? key,
    required this.friend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(friend.image),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: friend.isOnline ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 2),
              ),
              constraints: const BoxConstraints(
                minWidth: 15,
                minHeight: 15,
              ),
            ),
          )
        ],
      ),
      title: Text(
        friend.username,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        friend.isOnline ? 'Online' : 'Offline',
        style: const TextStyle(fontSize: 14),
      ),
      trailing: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black45,
        ),
        width: 30,
        height: 30,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi),
          child: const Icon(
            Icons.mode_comment_sharp,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
    );
  }
}
