import 'package:dartz/dartz.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:intl/intl.dart';


extension StringExtF on String? {
  bool get isNotValidName => containsValidValue && this!.length < 3;
  String get valueOrEmpty => this ?? '';
  String get valueOrHyphen => this ?? '-';
  String get valueOrNil => this ?? '-Nil-';

  Either<Failure, T> asFailure<T>() => left(Failure(error: this!));

  bool equals(String? str) => StringUtils.equals(this, str);

  bool equalsIgnoreCase(String? str) => StringUtils.equals(this, str);

  bool get isValidNum => containsValidValue && num.tryParse(this!) != null;

  String concat([String? s2, String? s3]) => StringUtils.concat(this, [s2, s3]);

  bool get isSVG => containsValidValue && this!.split('.').last == 'svg';

  String get captilizeName => valueOrEmpty.trim().split(' ').map((word) {
        if (word.isNotEmpty) {
          return word[0].toUpperCase() + word.substring(1).toLowerCase();
        } else {
          return '';
        }
      }).join(' ');

  bool get isImage => StringUtils.isImage(this!.replaceAll('.', ''));
  bool get isDocument => StringUtils.isDoc(this!.replaceAll('.', ''));

  bool containsIgnoreCase(String? other) {
    if (this == null || other == null) {
      return false;
    }
    return this!.toLowerCase().contains(other.toLowerCase());
  }

  bool get containsValidValue =>
      this != null && (this!.trim().isNotEmpty) && this!.trim() != 'null';

  bool get doesNotHaveValue => !containsValidValue;


  String get toFriendlyDate {
    if (this == null || this!.trim().isEmpty) return '';
    final originalDateFormat = DateFormatUtil.obDateTimeFormat;
    final uiDateFormat = DateFormat('dd-MMM-yyyy');
    return uiDateFormat.format(originalDateFormat.parse(this!));
  }
}
