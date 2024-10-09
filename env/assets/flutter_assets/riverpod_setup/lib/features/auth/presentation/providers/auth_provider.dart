import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttrfly/network/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../data/auth_repo.dart';
import '../../model/user.dart';


part 'auth_provider.freezed.dart';

final authProvider = StateNotifierProvider<Auth, AuthState>(
    (ref) => Auth(repo: $sl.get<AuthRepo>())..authCheckRequested());

class Auth extends StateNotifier<AuthState> {
  Auth({required this.repo}) : super(const AuthState.loading());
  final AuthRepo repo;

  void authCheckRequested() async {
    state = const _Loading();
    try {
      final isLoggedIn = await repo.isLoggedIn();
      if (!isLoggedIn) {
        state = const _UnAuthenticated();
        return;
      }
      final user = await repo.getPersistedUser();
      user.fold(
        (l) => state = const _UnAuthenticated(),
        (r) async {
          await register<User>(r);
          state = const _Authenticated();
        },
      );
    } on Exception catch (e, st) {
      $logger.error('[AuthCheck Exception]', e, st);
      state = const _UnAuthenticated();
    }
  }

  void signOut() async {
    try {
      state = const _Loading();
      await repo.signOut();
      await Future.wait([
        unregister<User>(),
      ]);
      state = const _UnAuthenticated();
    } on Exception catch (e, st) {
      $logger.error('[Auth Cubit] cant able to logout', e, st);
      state = const _UnAuthenticated();
    }
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}
