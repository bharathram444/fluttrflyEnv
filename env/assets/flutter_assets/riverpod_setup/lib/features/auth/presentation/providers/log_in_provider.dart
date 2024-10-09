import 'package:fluttrfly/fluttrfly.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../data/auth_repo.dart';


part 'log_in_provider.g.dart';

@riverpod
class LogIn extends _$LogIn {
  @override
  FutureOr<void> build() {}

  final AuthRepo repo = $sl.get<AuthRepo>();

  void login(String username, String password) async {
    state = const AsyncLoading();
    if (username.doesNotHaveValue && password.doesNotHaveValue) {
      state = pushError(
          error: 'Please enter your username and password to continue');
    } else if (username.doesNotHaveValue) {
      state = pushError(error: 'Please enter your username');
    } else if (password.doesNotHaveValue) {
      state = pushError(error: 'Please enter your password');
    } else {
      final response = await repo.logIn(username, password);
      response.fold(
        (l) => state = AsyncValue.error(l.error, StackTrace.current),
        (r) => state = const AsyncValue.data(null),
      );
    }
  }

  AsyncValue<void> pushError({required String error}) =>
      AsyncValue.error(error, StackTrace.current);
}
