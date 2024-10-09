import 'package:dartz/dartz.dart';

class AppTaskEither<L, R> {
  const AppTaskEither(this._run);

  factory AppTaskEither.tryCatch(Future<R> Function() run,
      L Function(Object error, StackTrace stackTrace) onError) {
    return AppTaskEither(() async {
      try {
        return Right<L, R>(await run());
      } catch (error, stack) {
        return Left<L, R>(onError(error, stack));
      }
    });
  }
  final Future<Either<L, R>> Function() _run;

  Future<Either<L, R>> run() => _run();
}
