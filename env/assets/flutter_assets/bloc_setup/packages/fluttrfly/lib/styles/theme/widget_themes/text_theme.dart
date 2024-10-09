import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:google_fonts/google_fonts.dart';

class BTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: _baseLightTextTheme,
    displayMedium: _baseLightTextTheme,
    displaySmall: _baseLightTextTheme,
    headlineLarge: _baseLightTextTheme,
    headlineMedium: _baseLightTextTheme,
    headlineSmall: _baseLightTextTheme,
    titleLarge: _baseLightTextTheme,
    bodyLarge: _baseLightTextTheme,
    titleMedium: _baseLightTextTheme,
    bodyMedium: _baseLightTextTheme,
    titleSmall: _baseLightTextTheme,
    labelLarge: _baseLightTextTheme,
    labelMedium: _baseLightTextTheme,
    bodySmall: _baseLightTextTheme,
    labelSmall: _baseLightTextTheme,
  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: _baseDarkTextTheme,
    displayMedium: _baseDarkTextTheme,
    displaySmall: _baseDarkTextTheme,
    headlineLarge: _baseDarkTextTheme,
    headlineMedium: _baseDarkTextTheme,
    headlineSmall: _baseDarkTextTheme,
    titleLarge: _baseDarkTextTheme,
    bodyLarge: _baseDarkTextTheme,
    titleMedium: _baseDarkTextTheme,
    bodyMedium: _baseDarkTextTheme,
    titleSmall: _baseDarkTextTheme,
    labelLarge: _baseDarkTextTheme,
    labelMedium: _baseDarkTextTheme,
    bodySmall: _baseDarkTextTheme,
    labelSmall: _baseDarkTextTheme,
  );
// basic text theme
  static final TextStyle _baseLightTextTheme =
      GoogleFonts.openSans(color: ColorX.instance.sc.grey800);
  static final TextStyle _baseDarkTextTheme =
      GoogleFonts.openSans(color: ColorX.instance.sc.grey200);
}
