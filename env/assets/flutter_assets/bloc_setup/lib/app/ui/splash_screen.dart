import 'package:flutter/material.dart';

import '../../core/styles/app_icon.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(child: Image.asset(AppIcons.logo.path)),
    );
  }
}
