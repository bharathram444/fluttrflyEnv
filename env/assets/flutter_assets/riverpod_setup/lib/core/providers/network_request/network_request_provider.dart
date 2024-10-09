import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttrfly/network/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_request_provider.freezed.dart';

typedef RequestFunction<T, RP> = Future<Either<Failure, T>> Function(
    RP? params, NetworkRequestState<T> state);

class NetworkRequestProvider<T, RP>
    extends StateNotifier<NetworkRequestState<T>> {
  NetworkRequestProvider({required this.onRequest})
      : super(_NetworkRequestInitial<T>());

  final RequestFunction<T, RP> onRequest;

  Future<void> request([RP? params]) async {
    state = _NetworkRequestLoading<T>();
    final result = await onRequest(params, state);
    result.fold(
      (l) => state = _NetworkRequestFailure<T>(l),
      (r) => state = _NetworkRequestSuccess<T>(r),
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
  bool get isLoading => maybeWhen(orElse: () => false, loading: () => true);
  bool get isInitial => maybeWhen(orElse: () => false, initial: () => true);
  dynamic get params => T;
}

// alternate way to get...
// StateNotifierProviderFamily<NetworkRequest<T, RP>, NetworkRequestState<T>,
//     RequestFunction<T, RP>> createNetworkRequestProvider<T, RP>() {
//   return StateNotifierProvider.family<NetworkRequest<T, RP>,
//       NetworkRequestState<T>, RequestFunction<T, RP>>(
//     (ref, onRequest) {
//       return NetworkRequest<T, RP>(onRequest: onRequest);
//     },
//   );
// }