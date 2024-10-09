import 'package:flutter/material.dart';

class BElevatedButtonTheme {
  static ElevatedButtonThemeData elevatedButtonLightTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(shape: _commonShape));
  static ElevatedButtonThemeData elevatedButtonDarkTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(shape: _commonShape));

  static final _commonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  );
}
