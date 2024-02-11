import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/failure.dart';

part 'network_request_cubit.freezed.dart';

class NetworkRequestCubit<T, RP> extends Cubit<NetworkRequestState<T>> {
  NetworkRequestCubit({required this.onRequest})
      : super(NetworkRequestState<T>.initial());

  final Future<Either<Failure, T>> Function(
      RP? params, NetworkRequestState<T> state) onRequest;

  Future<void> request([RP? params]) async {
    emit(NetworkRequestState<T>.loading());

    final result = await onRequest(params, state);
    result.fold(
      (l) => emit(NetworkRequestState<T>.failure(l)),
      (r) => emit(NetworkRequestState<T>.success(r)),
    );
  }
}

@freezed
class NetworkRequestState<T> with _$NetworkRequestState<T> {
  const NetworkRequestState._();

  const factory NetworkRequestState.initial() = _NetworkRequestInitial<T>;

  const factory NetworkRequestState.loading() = _NetworkRequestLoading<T>;

  const factory NetworkRequestState.success(T data) = _NetworkRequestSuccess<T>;

  const factory NetworkRequestState.failure(Failure failure) =
      _NetworkRequestFailure<T>;
}
