import 'package:flutter/material.dart';

class RoleLabel extends StatelessWidget {
  final int count;
  final String label;

  const RoleLabel({
    Key? key,
    required this.count,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        "${label.toUpperCase()} — $count",
        style: const TextStyle(
          color: Colors.white24,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
