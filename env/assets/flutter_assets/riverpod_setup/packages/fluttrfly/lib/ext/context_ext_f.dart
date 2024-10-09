import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

extension BuildContextExtF on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  bool get isDakMode => colorScheme.brightness == Brightness.dark;
  void exit<T>([T? data]) => Navigator.of(this).pop(data);
  void close<T>([T? data]) =>
      Navigator.of(this, rootNavigator: false).pop(data);
  double get sizeOfWidth => MediaQuery.sizeOf(this).width;
  double get sizeOfHeight => MediaQuery.sizeOf(this).height;
  ColorX get colorX => ColorX.instance;
}
