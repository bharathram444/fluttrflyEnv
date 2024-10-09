import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppBaseCubit<T> extends Cubit<T> {
  AppBaseCubit(super.state);

  void emitSafeState(T state) {
    if (!isClosed) {
      emit(state);
    }
  }
}