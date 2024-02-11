import 'package:dartz/dartz.dart';

import '../model/failure.dart';

extension StringExentions on String? {
  Either<Failure, T> asFailure<T>() => left(Failure(error: this!));

  bool get containsValidValue =>
      this != null && (this!.trim().isNotEmpty) && this!.trim() != 'null';

  bool get doesNotHaveValue => !containsValidValue;

  String get valueOrEmpty => this ?? '';
}
