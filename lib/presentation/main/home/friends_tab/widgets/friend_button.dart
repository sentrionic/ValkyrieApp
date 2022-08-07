import 'package:flutter/material.dart';

class FriendButton extends StatelessWidget {
  final Function onClick;
  final IconData icon;
  final Color iconColor;

  const FriendButton({
    super.key,
    required this.onClick,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black45,
        ),
        width: 35,
        height: 35,
        child: Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
      ),
    );
  }
}
