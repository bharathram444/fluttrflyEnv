import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:injectable/injectable.dart';

import '../../../core/base/base_repo.dart';
import '../../../core/core.dart';
import 'auth_repo.dart';
import '../model/user.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl extends BaseApiRepo implements AuthRepo {
  const AuthRepoImpl(super.client, this.storage);
  final KeyValueStorage storage;

  @override
  AsyncValueOf<User> getPersistedUser() async {
    try {
      final userSource = await storage.getSecureString(LocalKeys.user);
      if (userSource.doesNotHaveValue) {
        return left(const Failure(error: 'No user details found'));
      }
      final userData = jsonDecode(userSource!) as Map<String, dynamic>;
      final user = User.fromJson(userData);

      return right(user);
    } on Exception catch (e, st) {
      $logger.error('[repo] could not get persisted user', e, st);
      return left(const Failure(error: 'Something went wrong'));
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try {
      final user = await storage.getSecureString(LocalKeys.user);
      return (user.containsValidValue && json.decode(user!) is Map);
    } on Exception catch (e, st) {
      $logger.error('[repo] could not check for persisted user', e, st);
      return false;
    }
  }

  @override
  AsyncValueOf<User> logIn(String username, String pswd) async {
    return await executeSafely(() async {
      final config = RequestConfig(
        url: Urls.login,
        parser: User.fromJson,
        body: jsonEncode({'usr': username, 'pwd': pswd}),
      );
      final response = await post(config, includeAuthHeader: false);
      return response.processAsync((r) async {
        await _persistUser(r.data!.copyWith(email: username));
        return right(r.data!.copyWith(email: username));
      });
    });
  }

  Future<Either<Failure, bool>> _persistUser(User user) async {
    try {
      final userJson = jsonEncode(user.toJson());
      await storage.setSecureString(LocalKeys.user, userJson);

      return right(true);
    } on Exception catch (e, st) {
      $logger.error('[repo] could not persisted user', e, st);
      return left(const Failure(error: 'Something went wrong'));
    }
  }

  @override
  AsyncValueOf<bool> signOut() async {
    try {
      await storage.clearAllValues();
      await storage.clearAllSecureValues();
      return right(true);
    } on Exception catch (e, st) {
      $logger.error('[repo] could not sign out user', e, st);
      return left(const Failure(error: 'Could not sign out'));
    }
  }
}
