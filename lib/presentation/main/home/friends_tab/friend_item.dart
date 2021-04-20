import 'dart:math';

import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/presentation/common/widgets/avatar_with_badge.dart';

class FriendItem extends StatelessWidget {
  final Friend friend;

  const FriendItem({
    Key? key,
    required this.friend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: getAvatarWithBadge(friend.image, isOnline: friend.isOnline),
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
