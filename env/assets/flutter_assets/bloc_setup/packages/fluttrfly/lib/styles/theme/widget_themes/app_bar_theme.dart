import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class BAppBarTheme {
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    centerTitle: true,
    backgroundColor: ColorX.instance.sc.grey50,
  );
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    centerTitle: true,
    backgroundColor: ColorX.instance.sc.blackS,
  );
}
