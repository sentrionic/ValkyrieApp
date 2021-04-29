import 'package:flutter/material.dart';

Widget getModalButton(
  String label,
  IconData icon,
  Function onClick, [
  Color? iconColor,
]) {
  return SizedBox(
    width: double.infinity,
    child: TextButton(
      onPressed: () => onClick(),
      style: TextButton.styleFrom(
        primary: Colors.white70,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Icon(
                icon,
                size: 22,
                color: iconColor,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
