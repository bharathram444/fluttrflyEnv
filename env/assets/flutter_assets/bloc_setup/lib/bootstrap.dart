import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:injectable/injectable.dart';

import 'core/core.dart';
import 'core/di/injector.dart';

Future<void> bootstrap(void Function() runApp) async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await _initInjector();
  if (Platform.isAndroid || Platform.isIOS) {
    await _initOS();
  }
  _setupErrorHandling(runApp);
}

Future<void> _initInjector() async {
  await configureDependencies(env: Environment.dev);
  await register(Urls.uat(), instanceName: 'baseUrl');
}

Future<void> _initOS() async {
  ColorX.setSeed(Colors.blueGrey);
  // OneSignal.initialize(Consts.oneSignalId);
  // await OneSignal.Notifications.requestPermission(true);
}

void _setupErrorHandling(void Function() runApp) {
  if (!kIsWeb) {
    Isolate.current.addErrorListener(
      RawReceivePort((List<dynamic> pair) async {
        try {
          final List<dynamic> errorAndStacktrace = pair;
          await FirebaseCrashlytics.instance.recordError(
            errorAndStacktrace.first,
            errorAndStacktrace.last as StackTrace,
          );
        } on Exception catch (e, st) {
          $logger.error('[Running isolate error]', e, st);
        }
      }).sendPort,
    );
  }
  runApp();
  FlutterNativeSplash.remove();
}
