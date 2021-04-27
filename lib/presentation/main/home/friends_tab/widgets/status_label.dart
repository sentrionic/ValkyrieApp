import 'package:flutter/material.dart';

class StatusLabel extends StatelessWidget {
  final String label;
  final int count;
  const StatusLabel({
    Key? key,
    required this.label,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        "${label.toUpperCase()} — $count",
        style: const TextStyle(
          color: Colors.white54,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
