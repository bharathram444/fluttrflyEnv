
import 'dart:async';

import 'package:dartz/dartz.dart';

extension EitherExtensions<Failure, R> on Either<Failure, R> {
  Either<Failure, T> process<T>(Either<Failure, T> Function(R r) ifRight) =>
      fold(left, (r) => ifRight(r));

  FutureOr<Either<Failure, T>> processAsync<T>(
          FutureOr<Either<Failure, T>> Function(R r) ifRight) =>
      fold(left, (r) => ifRight(r));

  Failure getLeft() =>
      fold((l) => l, (r) => throw Exception('unexpected state'));
}
