import 'package:flutter/material.dart';

import 'colors.dart';

final appTheme = ThemeData.dark().copyWith(
  accentColor: ThemeColors.themeBlue,
  backgroundColor: ThemeColors.sheetBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: ThemeColors.drawerBackground,
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
    backgroundColor: ThemeColors.sheetBackground,
  ),
);
