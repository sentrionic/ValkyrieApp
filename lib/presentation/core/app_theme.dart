import 'package:flutter/material.dart';

import 'colors.dart';

final appTheme = ThemeData.dark().copyWith(
  accentColor: ThemeColors.themeBlue,
  backgroundColor: ThemeColors.appBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: ThemeColors.appBackground,
    elevation: 0,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    fillColor: ThemeColors.inputBackground,
    labelStyle: TextStyle(
      color: Colors.white70,
    ),
    filled: true,
    errorStyle: TextStyle(color: ThemeColors.errorRed),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ThemeColors.themeBlue,
  ),
  highlightColor: Colors.black12.withOpacity(.5),
  splashColor: Colors.black12,
  dialogTheme: const DialogTheme(
    backgroundColor: ThemeColors.sheetBackground,
  ),
);
