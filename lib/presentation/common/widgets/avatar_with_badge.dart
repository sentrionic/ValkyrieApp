import 'package:flutter/material.dart';

Widget getAvatarWithBadge(String image, {required bool isOnline}) {
  return Stack(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(
          image,
        ),
        radius: 18,
      ),
      Positioned(
        right: 0,
        bottom: 0,
        child: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: isOnline ? Colors.green : Colors.grey,
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
  );
}
