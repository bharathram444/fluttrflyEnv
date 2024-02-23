import 'package:flutter/material.dart';

class GoBackIcon extends StatelessWidget {

  const GoBackIcon({super.key, this.icon = const Icon(Icons.keyboard_backspace)});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: icon,
    );
  }
}
