// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infinite_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfiniteListState<T> {
  ApiState get apiState => throw _privateConstructorUsedError;
  List<T> get records => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of InfiniteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfiniteListStateCopyWith<T, InfiniteListState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfiniteListStateCopyWith<T, $Res> {
  factory $InfiniteListStateCopyWith(InfiniteListState<T> value,
          $Res Function(InfiniteListState<T>) then) =
      _$InfiniteListStateCopyWithImpl<T, $Res, InfiniteListState<T>>;
  @useResult
  $Res call(
      {ApiState apiState,
      List<T> records,
      bool hasReachedMax,
      String? query,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$InfiniteListStateCopyWithImpl<T, $Res,
        $Val extends InfiniteListState<T>>
    implements $InfiniteListStateCopyWith<T, $Res> {
  _$InfiniteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfiniteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiState = null,
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as ApiState,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  /// Create a copy of InfiniteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InfiniteListStateImplCopyWith<T, $Res>
    implements $InfiniteListStateCopyWith<T, $Res> {
  factory _$$InfiniteListStateImplCopyWith(_$InfiniteListStateImpl<T> value,
          $Res Function(_$InfiniteListStateImpl<T>) then) =
      __$$InfiniteListStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {ApiState apiState,
      List<T> records,
      bool hasReachedMax,
      String? query,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$InfiniteListStateImplCopyWithImpl<T, $Res>
    extends _$InfiniteListStateCopyWithImpl<T, $Res, _$InfiniteListStateImpl<T>>
    implements _$$InfiniteListStateImplCopyWith<T, $Res> {
  __$$InfiniteListStateImplCopyWithImpl(_$InfiniteListStateImpl<T> _value,
      $Res Function(_$InfiniteListStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InfiniteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiState = null,
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$InfiniteListStateImpl<T>(
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as ApiState,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<T>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$InfiniteListStateImpl<T> extends _InfiniteListState<T> {
  const _$InfiniteListStateImpl(
      {required this.apiState,
      required final List<T> records,
      required this.hasReachedMax,
      this.query,
      this.failure})
      : _records = records,
        super._();

  @override
  final ApiState apiState;
  final List<T> _records;
  @override
  List<T> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final bool hasReachedMax;
  @override
  final String? query;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'InfiniteListState<$T>(apiState: $apiState, records: $records, hasReachedMax: $hasReachedMax, query: $query, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfiniteListStateImpl<T> &&
            (identical(other.apiState, apiState) ||
                other.apiState == apiState) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      apiState,
      const DeepCollectionEquality().hash(_records),
      hasReachedMax,
      query,
      failure);

  /// Create a copy of InfiniteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfiniteListStateImplCopyWith<T, _$InfiniteListStateImpl<T>>
      get copyWith =>
          __$$InfiniteListStateImplCopyWithImpl<T, _$InfiniteListStateImpl<T>>(
              this, _$identity);
}

abstract class _InfiniteListState<T> extends InfiniteListState<T> {
  const factory _InfiniteListState(
      {required final ApiState apiState,
      required final List<T> records,
      required final bool hasReachedMax,
      final String? query,
      final Failure? failure}) = _$InfiniteListStateImpl<T>;
  const _InfiniteListState._() : super._();

  @override
  ApiState get apiState;
  @override
  List<T> get records;
  @override
  bool get hasReachedMax;
  @override
  String? get query;
  @override
  Failure? get failure;

  /// Create a copy of InfiniteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfiniteListStateImplCopyWith<T, _$InfiniteListStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
