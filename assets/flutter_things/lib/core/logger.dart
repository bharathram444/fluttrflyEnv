import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

// root logger for the whole app
final $logger = AppLogger();

class AppLogger {
  final _$logger = Logger(
    printer: PrettyPrinter(
      lineLength: 100,
      methodCount: 0,
    ),
  );

  void error(Object message, [Object? exception, StackTrace? stackTrace]) {
    if (kDebugMode) {
      _$logger.e(message, error: exception, stackTrace: stackTrace);
    } else {
      unawaited(FirebaseCrashlytics.instance
          .recordError(exception, stackTrace, reason: message));
    }
  }

  void info(Object message) {
    if (kDebugMode) {
      _$logger.i(message);
    }
  }
}
