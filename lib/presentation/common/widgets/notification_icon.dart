import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class NotificationIcon extends StatelessWidget {
  final int count;
  const NotificationIcon({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -2,
      bottom: -2,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: ThemeColors.brandRed,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ThemeColors.inputBackground,
            width: 2,
          ),
        ),
        constraints: const BoxConstraints(
          minWidth: 22,
          minHeight: 20,
        ),
        child: Text(
          '$count',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
