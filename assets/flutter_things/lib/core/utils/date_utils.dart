import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExtendedDateTimeApi on DateTime {
  DateTime get threeDaysBack => subtract(const Duration(days: 3));
  String get toOpenBravoFormat => DateFormat('yyyy-MM-dd').format(this);
  String get toOpenBravoDateTimeFormat => DateFormat('yyyy-MM-ddTHH:mm:ss+05:30').format(this);
  String get toHHmmss => DateFormat('HH:mm:ss').format(this);
  String get toddMMyyyy => DateFormat('dd-MM-yyyy').format(this);
}

/// Parses openbravo date format to user friendly representation
///
/// Supported date formats: 2022-08-22T21:12:39+05:30
///
/// returns time in
///   h:mm a formation -> for current month days
///   MMM dd -> for all other days in current year
///   MMM dd, yyyy -> for all days
///
String shortDateTime(String originalDate, [DateTime? compareTo]) {
  try {
    final bool hasMatch = RegExp(r'\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d\+\d\d:\d\d').hasMatch(originalDate);
    if (!hasMatch) {
      return '';
    }

    final today = compareTo ?? DateTime.now();
    final parsedDate = DateTime.parse(originalDate).add(const Duration(hours: 5, minutes: 30));

    if (parsedDate.year != today.year) {
      return DateFormat.yMMMd().format(parsedDate);
    }

    if (parsedDate.month == today.month) {
      if (parsedDate.day == today.day) {
        return DateFormat('h:mm a').format(parsedDate);
      } else if ((parsedDate.day - today.day).abs() == 1) {
        final format = DateFormat('h:mm a').format(parsedDate);

        return 'Yesterday $format';
      }
    }

    return DateFormat('MMM dd').format(parsedDate);
  } on Exception catch (_) {
    return '';
  }
}

extension IntegerExtension on int {
  String get addLeadingZeros => toString().padLeft(2,'0');
}

extension TimeofDayExt on TimeOfDay {
  String to24Hours() {
    final hour = this.hour.toString().padLeft(2, '0');
    final min = minute.toString().padLeft(2, '0');

    return '$hour:$min:00';
  }
}


extension TimeOfDayExtension on TimeOfDay{
  String formatToString() {
    final patterns = [hour,minute,0];
    
    return patterns.map((e) => e.addLeadingZeros).join(':');
  }
}

extension DateTimeFormatter on String? {
  String get addfiveHoursThirtyMins {
    if (this == null || this!.trim().isEmpty) {
      return '';
    }

    return DateFormat('HH:mm:ss')
        .parse(this!)
        .add(const Duration(hours: 5, minutes: 30))
        .toHHmmss;
  }

  String get subtractfiveHoursThirtyMins {
    if (this == null || this!.trim().isEmpty) {
      return '';
    }
    
    return DateFormat('HH:mm:ss')
        .parse(this!)
        .subtract(const Duration(hours: 5, minutes: 30))
        .toHHmmss;
  }

  DateTime get dateTimeObj => DateFormat('yyyy-MM-dd').parse(this!);
}