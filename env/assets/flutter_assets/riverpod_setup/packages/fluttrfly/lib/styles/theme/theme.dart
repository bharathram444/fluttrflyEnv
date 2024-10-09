import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:fluttrfly/styles/theme/widget_themes/app_bar_theme.dart';
import 'package:fluttrfly/styles/theme/widget_themes/elevated_button_theme.dart';
import 'package:fluttrfly/styles/theme/widget_themes/input_decoration_theme.dart';
import 'package:fluttrfly/styles/theme/widget_themes/text_theme.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
    colorSchemeSeed: ColorX.instance.seedForLight,
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: BTextTheme.lightTextTheme,
    appBarTheme: BAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: ColorX.instance.sc.grey50,
    inputDecorationTheme: BInputDecorationTheme.inputDecorationLightTheme,
    elevatedButtonTheme: BElevatedButtonTheme.elevatedButtonLightTheme,
    // progressIndicatorTheme: ProgressIndicatorThemeData()
  );

  static ThemeData darkTheme = ThemeData(
    colorSchemeSeed: ColorX.instance.seedForDark,
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: BTextTheme.darkTextTheme,
    appBarTheme: BAppBarTheme.darkAppBarTheme,
    scaffoldBackgroundColor: ColorX.instance.sc.blackS,
    inputDecorationTheme: BInputDecorationTheme.inputDecorationDarkTheme,
    elevatedButtonTheme: BElevatedButtonTheme.elevatedButtonDarkTheme,
  );
}


/// theme applied on completed ☑️ | not completed ❎
/// text  ☑️
/// scaffold ☑️
/// elevated button ☑️
/// text input fields ☑️
/// app bar ☑️
/// progress indicator ❎
///