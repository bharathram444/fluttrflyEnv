import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersionText extends StatelessWidget {
  const AppVersionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: _getAppVersion(),
      builder: (ctx, snapshot) {
        const loading = SizedBox(
          width: 24,
          height: 24,
          child: FittedBox(
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );

        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
            return loading;
          case ConnectionState.done:
            return Center(
              child: Text(
                snapshot.data!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
        }
      },
    );
  }

  Future<String?> _getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.version;
  }
}
  