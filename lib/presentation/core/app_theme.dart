import 'package:flutter/material.dart';

import 'package:valkyrie_app/presentation/core/colors.dart';

final ThemeData theme = ThemeData.dark();
final appTheme = theme.copyWith(
  colorScheme: theme.colorScheme.copyWith(secondary: ThemeColors.themeBlue),
  backgroundColor: ThemeColors.appBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: ThemeColors.appBarBackground,
    elevation: 0,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  inputDecorationTheme: InputDecorationTheme(
    border: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide.none,
    ),
    fillColor: ThemeColors.inputBackground,
    labelStyle: const TextStyle(
      color: Colors.white70,
    ),
    filled: true,
    errorStyle: const TextStyle(
      color: ThemeColors.errorRed,
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ThemeColors.themeBlue,
  ),
  highlightColor: Colors.black12.withOpacity(.5),
  splashColor: Colors.black12,
  dialogTheme: const DialogTheme(
    backgroundColor: ThemeColors.appBackground,
  ),
);
