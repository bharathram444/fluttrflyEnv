import 'package:fluttrfly/fluttrfly.dart';

import '../model/user.dart';


abstract interface class AuthRepo {
  Future<bool> isLoggedIn();
  AsyncValueOf<User> logIn(String username, String pswd);
  AsyncValueOf<User> getPersistedUser();
  AsyncValueOf<bool> signOut();
}
