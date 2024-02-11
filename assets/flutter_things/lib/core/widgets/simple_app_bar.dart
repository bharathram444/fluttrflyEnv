import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {

  const SimpleAppBar({
    required this.height,
    required this.title,
    required this.bottom,
    this.centerTitle = true,
    super.key,
  });

  final double height;
  final String title;
  final bool centerTitle;
  final PreferredSizeWidget bottom;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      centerTitle: centerTitle,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.keyboard_backspace),
      ),
      title: Text(title),
      bottom: bottom,
    );
  }
}
