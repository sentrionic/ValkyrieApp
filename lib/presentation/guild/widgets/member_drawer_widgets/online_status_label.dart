import 'package:flutter/material.dart';

class OnlineStatusLabel extends StatelessWidget {
  final int count;
  final bool isOnline;

  const OnlineStatusLabel({
    Key? key,
    required this.count,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        "${isOnline ? "ONLINE" : "OFFLINE"} — $count",
        style: const TextStyle(
          color: Colors.white24,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
