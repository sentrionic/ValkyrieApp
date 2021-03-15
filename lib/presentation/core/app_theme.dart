import 'package:flutter/material.dart';

import 'colors.dart';

final appTheme = ThemeData.dark().copyWith(
  backgroundColor: ThemeColors.appBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: ThemeColors.appBackground,
    elevation: 0,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
