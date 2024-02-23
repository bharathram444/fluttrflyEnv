import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.child,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
