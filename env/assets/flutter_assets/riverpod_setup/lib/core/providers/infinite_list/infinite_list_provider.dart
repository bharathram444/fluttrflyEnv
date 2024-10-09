import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttrfly/network/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'infinite_list_provider.freezed.dart';

enum ApiState { initial, loading, success, loadingMore, failed }

class InfiniteListProvider<T, FIP, FMP>
    extends StateNotifier<InfiniteListState<T>> {
  InfiniteListProvider({
    required this.requestInitial,
    this.requestMore,
  }) : super(InfiniteListState<T>.initial());

  final Future<Either<Failure, List<T>>> Function(
      FIP? params, InfiniteListState<T> state) requestInitial;

  final Future<Either<Failure, List<T>>> Function(
      FMP? params, InfiniteListState<T> state)? requestMore;

  bool _isFetchInProgress = false;
  final pageLength = 20;
  Future<void> fetchInitial([FIP? params]) async {
    try {
      state = state.copyWith(apiState: ApiState.loading, failure: null);
      _isFetchInProgress = true;
      final result = await requestInitial(params, state);
      result.fold(
        (l) => state = state.copyWith(apiState: ApiState.failed, failure: l),
        (r) => state = state.copyWith(
          apiState: ApiState.success,
          records: r,
          hasReachedMax: (r.length < pageLength),
        ),
      );
    } on Exception catch (e) {
      final exception = Failure(error: e.toString());
      state = state.copyWith(apiState: ApiState.failed, failure: exception);
    } finally {
      _isFetchInProgress = false;
    }
  }

  void fetchMore([FMP? params]) async {
    final canRequest =
        !state.hasReachedMax && !_isFetchInProgress && requestMore != null;
    if (canRequest) {
      _isFetchInProgress = true;
      state = state.copyWith(apiState: ApiState.loadingMore, failure: null);

      final result = await requestMore!(params, state);
      result.fold(
        (l) => state = state.copyWith(apiState: ApiState.success, failure: l),
        (List<T> r) {
          final hasReachedMax = (r.length < pageLength);
          state = state.copyWith(
              records: state.records + r, hasReachedMax: hasReachedMax);
        },
      );
      _isFetchInProgress = false;
    }
  }
}

@freezed
class InfiniteListState<T> with _$InfiniteListState<T> {
  const InfiniteListState._();
  const factory InfiniteListState({
    required ApiState apiState,
    required List<T> records,
    required bool hasReachedMax,
    String? query,
    Failure? failure,
  }) = _InfiniteListState<T>;
  R maybeWhen<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(
      List<T> data,
      bool hasReadedMax,
      bool isLoadingMore,
      Failure? failure,
    )? success,
    R Function(Failure error)? failed,
    required R Function() orElse,
  }) {
    if (initial != null && apiState == ApiState.loading) {
      return initial();
    } else if (loading != null && isLoading) {
      return loading();
    } else if (success != null && isSuccess) {
      return success(records, hasReachedMax, isLoadingMore, failure);
    } else if (failed != null && isFailure) {
      return failed(failure!);
    }

    return orElse();
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(List<T> data, bool hasReadedMax, bool isLoadingMore,
            Failure? failure)
        success,
    required R Function(Failure error) failed,
  }) =>
      switch (apiState) {
        ApiState.initial => initial(),
        ApiState.loading => loading(),
        ApiState.success ||
        ApiState.loadingMore =>
          success(records, hasReachedMax, isLoadingMore, failure),
        ApiState.failed => failed(failure!)
      };
  factory InfiniteListState.initial() => InfiniteListState(
      apiState: ApiState.initial, records: List.empty(), hasReachedMax: false);
  int get curLength =>
      maybeWhen(orElse: () => 0, success: (data, _, __, ___) => data.length);
  bool get isLoading => apiState == ApiState.loading;
  bool get isSuccess =>
      apiState == ApiState.success || apiState == ApiState.loadingMore;
  bool get isFailure => apiState == ApiState.failed && failure != null;
  bool get isLoadingMore => apiState == ApiState.loadingMore;
}
