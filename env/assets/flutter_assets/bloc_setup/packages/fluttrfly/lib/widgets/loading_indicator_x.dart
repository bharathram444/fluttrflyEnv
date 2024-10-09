import 'package:flutter/material.dart';

class LoadingIndicatorX extends StatelessWidget {
  const LoadingIndicatorX({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
