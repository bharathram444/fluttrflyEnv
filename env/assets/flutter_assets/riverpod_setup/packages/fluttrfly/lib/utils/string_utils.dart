import 'dart:math';

import 'package:fluttrfly/fluttrfly.dart';
import 'package:fluttrfly/utils/utils.dart';

class StringUtils {
  static bool equals(String? str1, String? str2) {
    if (str1 == null || str2 == null) return false;
    return str1 == str2;
  }

  static bool isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  static bool equalsIgnoreCase(String? str1, String? str2) {
    if (str1 == null || str2 == null) return false;
    return str1.trim().toLowerCase() == str2.trim().toLowerCase();
  }

  static String join(String delimeter, Iterable<String?> values) {
    return values.nonNulls.join(delimeter);
  }

  static String concat(String? s1, Iterable<String?> others) {
    return [s1, ...others].where((e) => !e.isNull).join('');
  }

  static String mask(String? value, [int toBeMasked = 4]) {
    if (value.doesNotHaveValue) return '';
    if (value!.length < toBeMasked) return value;

    final unMaskedText = value.substring(0, value.length - toBeMasked);
    final maskedValLength = value.length - unMaskedText.length;
    final maskedText = List.generate(maskedValLength, (_) => '#').join();
    return StringUtils.concat(unMaskedText, [maskedText]);
  }

  static bool isValidatePassword(String password) {
    const pattern = r'^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$&*~_]).{8,}$';
    return RegExp(pattern).hasMatch(password);
  }

  static bool isImage(String ext) {
    return switch (ext) {
      'jpg' || 'jpeg' || 'png' || 'gif' || 'bmp' || 'svg' => true,
      _ => false,
    };
  }

  static bool isDoc(String ext) {
    return switch (ext) {
      'pdf' || 'xls' || 'xlsx' => true,
      _ => false,
    };
  }

  static bool isIPv4(String baseUrl) {
    final ipv4Pattern = RegExp(r'^(\d{1,3}\.){3}\d{1,3}(:\d+)?$');
    return ipv4Pattern.hasMatch(baseUrl);
  }

  static String buildCaptcha() {
    const letters =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    const length = 6;
    final random = Random();
    final randomString = String.fromCharCodes(List.generate(
        length, (index) => letters.codeUnitAt(random.nextInt(letters.length))));
    return randomString;
  }
}
