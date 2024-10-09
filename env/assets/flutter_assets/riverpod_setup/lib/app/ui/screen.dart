import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String screenName;

  const Screen({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(screenName)),
    );
  }
}
