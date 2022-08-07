import 'package:flutter/material.dart';

class RoleLabel extends StatelessWidget {
  final int count;
  final String label;

  const RoleLabel({
    super.key,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text(
        "${label.toUpperCase()} — $count",
        style: const TextStyle(
          color: Colors.white24,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
