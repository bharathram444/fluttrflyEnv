import 'dart:developer' as dev;
import 'package:logger/logger.dart';

final $logger = AppLogger();
class AppLogger {
  final _$logger = Logger(
    printer: SimplePrinter(printTime: true),
    level: Level.all,
  );

  void info(dynamic message, [Object? error]) {
    _$logger.i(message, error: error, time: DateTime.now());
  }

  void error(dynamic message, [Object? error, dynamic st]) {

    late final StackTrace stackTrace;
    if(st is StackTrace) {
      stackTrace = st;
    } else {
      stackTrace = StackTrace.fromString(st.toString());
    }
    _$logger..e(message, error: error, stackTrace: stackTrace)..i(stackTrace);
  }

  void devLog(dynamic message) {
    dev.log(message.toString());
  }
}