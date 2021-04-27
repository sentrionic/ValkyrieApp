import 'package:flutter/material.dart';

void showConfirmationDialog(
  BuildContext context, {
  required String title,
  required String body,
  required String buttonPrompt,
  required Color buttonColor,
  required Future<void> Function() onSubmit,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
          ],
        ),
        content: Text(
          body,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () => onSubmit(),
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
            ),
            child: Text(buttonPrompt),
          ),
        ],
      );
    },
  );
}
