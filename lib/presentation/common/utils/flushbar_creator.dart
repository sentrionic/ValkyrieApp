import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

Flushbar showError({
  required String message,
  String? title,
  Duration duration = const Duration(seconds: 3),
}) {
  return Flushbar(
    title: title,
    message: message,
    icon: Icon(
      Icons.warning,
      size: 28.0,
      color: Colors.red[300],
    ),
    leftBarIndicatorColor: Colors.red[300],
    backgroundColor: ThemeColors.inputBackground,
    duration: duration,
  );
}

Flushbar showSuccess({
  required String message,
  String? title,
  Duration duration = const Duration(seconds: 3),
}) {
  return Flushbar(
    title: title,
    message: message,
    icon: Icon(
      Icons.check_circle,
      color: Colors.green[300],
    ),
    leftBarIndicatorColor: Colors.green[300],
    backgroundColor: ThemeColors.inputBackground,
    duration: duration,
  );
}
