// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'infinite_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfiniteListState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<T> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfiniteListInitial<T> value) initial,
    required TResult Function(_InfiniteListLoading<T> value) loading,
    required TResult Function(_InfiniteListSuccess<T> value) success,
    required TResult Function(_InfiniteListFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfiniteListInitial<T> value)? initial,
    TResult? Function(_InfiniteListLoading<T> value)? loading,
    TResult? Function(_InfiniteListSuccess<T> value)? success,
    TResult? Function(_InfiniteListFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfiniteListInitial<T> value)? initial,
    TResult Function(_InfiniteListLoading<T> value)? loading,
    TResult Function(_InfiniteListSuccess<T> value)? success,
    TResult Function(_InfiniteListFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfiniteListStateCopyWith<T, $Res> {
  factory $InfiniteListStateCopyWith(InfiniteListState<T> value,
          $Res Function(InfiniteListState<T>) then) =
      _$InfiniteListStateCopyWithImpl<T, $Res, InfiniteListState<T>>;
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
}

/// @nodoc
abstract class _$$_InfiniteListInitialCopyWith<T, $Res> {
  factory _$$_InfiniteListInitialCopyWith(_$_InfiniteListInitial<T> value,
          $Res Function(_$_InfiniteListInitial<T>) then) =
      __$$_InfiniteListInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InfiniteListInitialCopyWithImpl<T, $Res>
    extends _$InfiniteListStateCopyWithImpl<T, $Res, _$_InfiniteListInitial<T>>
    implements _$$_InfiniteListInitialCopyWith<T, $Res> {
  __$$_InfiniteListInitialCopyWithImpl(_$_InfiniteListInitial<T> _value,
      $Res Function(_$_InfiniteListInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InfiniteListInitial<T> extends _InfiniteListInitial<T> {
  const _$_InfiniteListInitial() : super._();

  @override
  String toString() {
    return 'InfiniteListState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfiniteListInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<T> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfiniteListInitial<T> value) initial,
    required TResult Function(_InfiniteListLoading<T> value) loading,
    required TResult Function(_InfiniteListSuccess<T> value) success,
    required TResult Function(_InfiniteListFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfiniteListInitial<T> value)? initial,
    TResult? Function(_InfiniteListLoading<T> value)? loading,
    TResult? Function(_InfiniteListSuccess<T> value)? success,
    TResult? Function(_InfiniteListFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfiniteListInitial<T> value)? initial,
    TResult Function(_InfiniteListLoading<T> value)? loading,
    TResult Function(_InfiniteListSuccess<T> value)? success,
    TResult Function(_InfiniteListFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InfiniteListInitial<T> extends InfiniteListState<T> {
  const factory _InfiniteListInitial() = _$_InfiniteListInitial<T>;
  const _InfiniteListInitial._() : super._();
}

/// @nodoc
abstract class _$$_InfiniteListLoadingCopyWith<T, $Res> {
  factory _$$_InfiniteListLoadingCopyWith(_$_InfiniteListLoading<T> value,
          $Res Function(_$_InfiniteListLoading<T>) then) =
      __$$_InfiniteListLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InfiniteListLoadingCopyWithImpl<T, $Res>
    extends _$InfiniteListStateCopyWithImpl<T, $Res, _$_InfiniteListLoading<T>>
    implements _$$_InfiniteListLoadingCopyWith<T, $Res> {
  __$$_InfiniteListLoadingCopyWithImpl(_$_InfiniteListLoading<T> _value,
      $Res Function(_$_InfiniteListLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InfiniteListLoading<T> extends _InfiniteListLoading<T> {
  const _$_InfiniteListLoading() : super._();

  @override
  String toString() {
    return 'InfiniteListState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfiniteListLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<T> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfiniteListInitial<T> value) initial,
    required TResult Function(_InfiniteListLoading<T> value) loading,
    required TResult Function(_InfiniteListSuccess<T> value) success,
    required TResult Function(_InfiniteListFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfiniteListInitial<T> value)? initial,
    TResult? Function(_InfiniteListLoading<T> value)? loading,
    TResult? Function(_InfiniteListSuccess<T> value)? success,
    TResult? Function(_InfiniteListFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfiniteListInitial<T> value)? initial,
    TResult Function(_InfiniteListLoading<T> value)? loading,
    TResult Function(_InfiniteListSuccess<T> value)? success,
    TResult Function(_InfiniteListFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _InfiniteListLoading<T> extends InfiniteListState<T> {
  const factory _InfiniteListLoading() = _$_InfiniteListLoading<T>;
  const _InfiniteListLoading._() : super._();
}

/// @nodoc
abstract class _$$_InfiniteListSuccessCopyWith<T, $Res> {
  factory _$$_InfiniteListSuccessCopyWith(_$_InfiniteListSuccess<T> value,
          $Res Function(_$_InfiniteListSuccess<T>) then) =
      __$$_InfiniteListSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> records, bool hasReachedMax, String? query});
}

/// @nodoc
class __$$_InfiniteListSuccessCopyWithImpl<T, $Res>
    extends _$InfiniteListStateCopyWithImpl<T, $Res, _$_InfiniteListSuccess<T>>
    implements _$$_InfiniteListSuccessCopyWith<T, $Res> {
  __$$_InfiniteListSuccessCopyWithImpl(_$_InfiniteListSuccess<T> _value,
      $Res Function(_$_InfiniteListSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? hasReachedMax = null,
    Object? query = freezed,
  }) {
    return _then(_$_InfiniteListSuccess<T>(
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
    ));
  }
}

/// @nodoc

class _$_InfiniteListSuccess<T> extends _InfiniteListSuccess<T> {
  const _$_InfiniteListSuccess(
      {required final List<T> records, required this.hasReachedMax, this.query})
      : _records = records,
        super._();

  final List<T> _records;
  @override
  List<T> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final bool hasReachedMax;
  @override
  final String? query;

  @override
  String toString() {
    return 'InfiniteListState<$T>.success(records: $records, hasReachedMax: $hasReachedMax, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfiniteListSuccess<T> &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), hasReachedMax, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfiniteListSuccessCopyWith<T, _$_InfiniteListSuccess<T>> get copyWith =>
      __$$_InfiniteListSuccessCopyWithImpl<T, _$_InfiniteListSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<T> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(records, hasReachedMax, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(records, hasReachedMax, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(records, hasReachedMax, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfiniteListInitial<T> value) initial,
    required TResult Function(_InfiniteListLoading<T> value) loading,
    required TResult Function(_InfiniteListSuccess<T> value) success,
    required TResult Function(_InfiniteListFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfiniteListInitial<T> value)? initial,
    TResult? Function(_InfiniteListLoading<T> value)? loading,
    TResult? Function(_InfiniteListSuccess<T> value)? success,
    TResult? Function(_InfiniteListFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfiniteListInitial<T> value)? initial,
    TResult Function(_InfiniteListLoading<T> value)? loading,
    TResult Function(_InfiniteListSuccess<T> value)? success,
    TResult Function(_InfiniteListFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _InfiniteListSuccess<T> extends InfiniteListState<T> {
  const factory _InfiniteListSuccess(
      {required final List<T> records,
      required final bool hasReachedMax,
      final String? query}) = _$_InfiniteListSuccess<T>;
  const _InfiniteListSuccess._() : super._();

  List<T> get records;
  bool get hasReachedMax;
  String? get query;
  @JsonKey(ignore: true)
  _$$_InfiniteListSuccessCopyWith<T, _$_InfiniteListSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InfiniteListFailureCopyWith<T, $Res> {
  factory _$$_InfiniteListFailureCopyWith(_$_InfiniteListFailure<T> value,
          $Res Function(_$_InfiniteListFailure<T>) then) =
      __$$_InfiniteListFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_InfiniteListFailureCopyWithImpl<T, $Res>
    extends _$InfiniteListStateCopyWithImpl<T, $Res, _$_InfiniteListFailure<T>>
    implements _$$_InfiniteListFailureCopyWith<T, $Res> {
  __$$_InfiniteListFailureCopyWithImpl(_$_InfiniteListFailure<T> _value,
      $Res Function(_$_InfiniteListFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_InfiniteListFailure<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_InfiniteListFailure<T> extends _InfiniteListFailure<T> {
  const _$_InfiniteListFailure(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'InfiniteListState<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfiniteListFailure<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfiniteListFailureCopyWith<T, _$_InfiniteListFailure<T>> get copyWith =>
      __$$_InfiniteListFailureCopyWithImpl<T, _$_InfiniteListFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<T> records, bool hasReachedMax, String? query)
        success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> records, bool hasReachedMax, String? query)?
        success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfiniteListInitial<T> value) initial,
    required TResult Function(_InfiniteListLoading<T> value) loading,
    required TResult Function(_InfiniteListSuccess<T> value) success,
    required TResult Function(_InfiniteListFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfiniteListInitial<T> value)? initial,
    TResult? Function(_InfiniteListLoading<T> value)? loading,
    TResult? Function(_InfiniteListSuccess<T> value)? success,
    TResult? Function(_InfiniteListFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfiniteListInitial<T> value)? initial,
    TResult Function(_InfiniteListLoading<T> value)? loading,
    TResult Function(_InfiniteListSuccess<T> value)? success,
    TResult Function(_InfiniteListFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _InfiniteListFailure<T> extends InfiniteListState<T> {
  const factory _InfiniteListFailure(final Failure failure) =
      _$_InfiniteListFailure<T>;
  const _InfiniteListFailure._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_InfiniteListFailureCopyWith<T, _$_InfiniteListFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
