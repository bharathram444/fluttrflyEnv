import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class BInputDecorationTheme {
  static InputDecorationTheme inputDecorationLightTheme = InputDecorationTheme(
    fillColor: ColorX.instance.sc.unicornSilver,
    border: _textFieldLightBorder,
    enabledBorder: _textFieldLightBorder,
    focusedBorder: _textFieldLightBorder,
    disabledBorder: _textFieldLightBorder,
  );

  static InputDecorationTheme inputDecorationDarkTheme = InputDecorationTheme(
    fillColor: ColorX.instance.sc.grey800,
    border: _textFieldDarkBorder,
    enabledBorder: _textFieldDarkBorder,
    focusedBorder: _textFieldDarkBorder,
    disabledBorder: _textFieldDarkBorder,
  );
  static final _textFieldLightBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: ColorX.instance.sc.nero, width: 0.4),
  );
  static final _textFieldDarkBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: ColorX.instance.sc.grey150, width: 0.4),
  );
}
