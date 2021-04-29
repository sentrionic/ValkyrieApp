import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

Widget getAvatarWithBadge(
  String image, {
  required bool isOnline,
  required double imageRadius,
  required double iconRadius,
}) {
  return Stack(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(
          image,
        ),
        backgroundColor: Colors.transparent,
        radius: imageRadius,
      ),
      Positioned(
        right: 0,
        bottom: 0,
        child: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: isOnline ? ThemeColors.brandGreen : Colors.grey,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 2,
              color: ThemeColors.dmBackground,
            ),
          ),
          constraints: BoxConstraints(
            minWidth: iconRadius,
            minHeight: iconRadius,
          ),
        ),
      )
    ],
  );
}
