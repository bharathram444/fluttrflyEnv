import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injector.dart';
import '../../features/auth/model/user.dart';

extension BuildContextExtC on BuildContext {
  User get user => $sl.get<User>();
  T cubit<T extends Cubit<Object>>() => BlocProvider.of<T>(this);

  /// You can add some context extensions...
}
