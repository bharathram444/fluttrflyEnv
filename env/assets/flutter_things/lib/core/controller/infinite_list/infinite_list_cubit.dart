import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/failure.dart';

part 'infinite_list_cubit.freezed.dart';

const pageLength = 20;

class InfiniteListCubit<T, FIP, FMP> extends Cubit<InfiniteListState<T>> {
  InfiniteListCubit({required this.requestInitial, this.requestMore})
      : super(InfiniteListState<T>.initial());

  final Future<Either<Failure, List<T>>> Function(
      FIP? params, InfiniteListState<T> state) requestInitial;
  final Future<Either<Failure, List<T>>> Function(
      FMP? params, InfiniteListState<T> state)? requestMore;

  Future<void> fetchInitial([FIP? params]) async {
    emit(InfiniteListState<T>.loading());

    final result = await requestInitial(params, state);
    result.fold(
      (l) => emit(InfiniteListState<T>.failure(l)),
      (r) => emit(InfiniteListState<T>.success(
          records: r, hasReachedMax: r.length < pageLength)),
    );
  }

  void fetchMore([FMP? params]) {
    state.whenOrNull(
      success: (oldRecord, hasReachedMax, _) async {
        if (!hasReachedMax && requestMore != null) {
          final result = await requestMore!(params, state);
          result.fold(
            (f) => emit(InfiniteListState<T>.failure(f)),
            (List<T> r) => emit(
              InfiniteListState<T>.success(
                  records: oldRecord + r, hasReachedMax: r.length < pageLength),
            ),
          );
        }
      },
    );
  }
}

@freezed
class InfiniteListState<T> with _$InfiniteListState<T> {
  const InfiniteListState._();

  const factory InfiniteListState.initial() = _InfiniteListInitial<T>;

  const factory InfiniteListState.loading() = _InfiniteListLoading<T>;

  const factory InfiniteListState.success({
    required List<T> records,
    required bool hasReachedMax,
    String? query,
  }) = _InfiniteListSuccess<T>;

  const factory InfiniteListState.failure(Failure failure) =
      _InfiniteListFailure<T>;

  int get curLength =>
      maybeWhen(orElse: () => 0, success: (records, _, __) => records.length);

  int get nextPageStart =>
      maybeWhen(orElse: () => 0, success: (records, _, __) => records.length);

  int get nextPageEnd => maybeWhen(
      orElse: () => 20,
      success: (records, _, __) => records.length + pageLength);
}
