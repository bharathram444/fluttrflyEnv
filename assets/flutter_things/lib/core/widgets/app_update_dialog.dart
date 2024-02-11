import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'widgets.dart';

class AppUpdateDialog extends StatelessWidget {
  const AppUpdateDialog(
      {required this.appName, required this.packageName, super.key});

  final String appName;
  final String packageName;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('App Update'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'New version of $appName is available in Play Store. Please update the app to continue.'),
          Row(
            children: const [
              Text('New Version: '),
              AppVersionText(),
            ],
          ),
        ],
      ),
      actions: [
        AppButton(
          child: const Text('Open PlayStore'),
          onPressed: () => unawaited(openPlaystore(packageName)),
        ),
      ],
    );
  }
}
