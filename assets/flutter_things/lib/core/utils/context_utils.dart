import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextUtils on BuildContext {
  void exit<T>([T? data]) => Navigator.of(this).pop(data);
  void showSnackbar(String text) => ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(text)));
  void showFormError(String text) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(text),
          backgroundColor: Theme.of(this).colorScheme.error,
          padding: const EdgeInsets.all(16),
        ),
      );

  void goToPage(Widget child) => Navigator.of(this).push(MaterialPageRoute(builder: (ctx) => child));

  T bloc<T extends Cubit<dynamic>>() => BlocProvider.of<T>(this);
  
    bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
