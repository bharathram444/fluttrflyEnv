import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Shortcut for DateFormatUtil [DFU]
typedef DFU = DateFormatUtil;

abstract class _DateTimeFormats {
  static final dayName = DateFormat('EEE');
  static final dayNameFull = DateFormat('EEEE');
  static final ddMMMyyyy = DateFormat('dd-MMM-yyyy');
  static final ddMMyyyy = DateFormat('dd/MM/yyyy');
  static final friendlyFormat = DateFormat('dd-MM-yyyy');
  static final yyyyMMdd = DateFormat('yyyy-MM-dd');
  // static final dateTimeLabel = DateFormat('MMM d, h:mm a');
  static final timeLabel = DateFormat('h:mm a');
}

abstract class DateFormatUtil {
  static final obDateTimeFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
  static DateTime now() => DateTime.now();

  static String getDayName(DateTime dateTime) =>
      _DateTimeFormats.dayName.format(dateTime);

  static String getDayNameFully(DateTime dateTime) =>
      _DateTimeFormats.dayNameFull.format(dateTime);
  static String ddMMyyyy(DateTime dateTime) =>
      _DateTimeFormats.ddMMyyyy.format(dateTime);
  static String ddMMMyyyy(DateTime dateTime) =>
      _DateTimeFormats.ddMMMyyyy.format(dateTime);
  static String yyyyMMdd(DateTime dateTime) =>
      _DateTimeFormats.yyyyMMdd.format(dateTime);
  static String friendlyFormat(DateTime dateTime) =>
      _DateTimeFormats.friendlyFormat.format(dateTime);
  // static String dateTimeLabel(DateTime dateTime) => _DateTimeFormats.dateTimeLabel.format(dateTime);
  static String timeLabel(DateTime dateTime) =>
      _DateTimeFormats.timeLabel.format(dateTime);

  static DateTime toDateTime(String date, [String format = 'dd/MM/yyyy']) =>
      DateFormat(format).parse(date);

  static String timeOfDayToString(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    final dateTime = DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    final formatter = DateFormat('HH:mm:ss');
    return formatter.format(dateTime);
  }

  static bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  static String formatTimeOfDay(TimeOfDay time) {
    final now = DateTime.now();
    final dateTime =
        DateTime(now.year, now.month, now.day, time.hour, time.minute);
    final formattedTime = DateFormat('HH:mm:ss').format(dateTime);
    return formattedTime;
  }
}
