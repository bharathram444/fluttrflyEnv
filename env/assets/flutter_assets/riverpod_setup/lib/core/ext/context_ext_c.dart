import 'package:flutter/material.dart';

import '../di/injector.dart';
import '../../features/auth/model/user.dart';


extension BuildContextExtC on BuildContext {
  User get user => $sl.get<User>();
    /// You can add some context extensions...
}
