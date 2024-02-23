// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkRequestState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkRequestInitial<T> value) initial,
    required TResult Function(_NetworkRequestLoading<T> value) loading,
    required TResult Function(_NetworkRequestSuccess<T> value) success,
    required TResult Function(_NetworkRequestFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkRequestInitial<T> value)? initial,
    TResult? Function(_NetworkRequestLoading<T> value)? loading,
    TResult? Function(_NetworkRequestSuccess<T> value)? success,
    TResult? Function(_NetworkRequestFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkRequestInitial<T> value)? initial,
    TResult Function(_NetworkRequestLoading<T> value)? loading,
    TResult Function(_NetworkRequestSuccess<T> value)? success,
    TResult Function(_NetworkRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkRequestStateCopyWith<T, $Res> {
  factory $NetworkRequestStateCopyWith(NetworkRequestState<T> value,
          $Res Function(NetworkRequestState<T>) then) =
      _$NetworkRequestStateCopyWithImpl<T, $Res, NetworkRequestState<T>>;
}

/// @nodoc
class _$NetworkRequestStateCopyWithImpl<T, $Res,
        $Val extends NetworkRequestState<T>>
    implements $NetworkRequestStateCopyWith<T, $Res> {
  _$NetworkRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NetworkRequestInitialCopyWith<T, $Res> {
  factory _$$_NetworkRequestInitialCopyWith(_$_NetworkRequestInitial<T> value,
          $Res Function(_$_NetworkRequestInitial<T>) then) =
      __$$_NetworkRequestInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NetworkRequestInitialCopyWithImpl<T, $Res>
    extends _$NetworkRequestStateCopyWithImpl<T, $Res,
        _$_NetworkRequestInitial<T>>
    implements _$$_NetworkRequestInitialCopyWith<T, $Res> {
  __$$_NetworkRequestInitialCopyWithImpl(_$_NetworkRequestInitial<T> _value,
      $Res Function(_$_NetworkRequestInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkRequestInitial<T> extends _NetworkRequestInitial<T> {
  const _$_NetworkRequestInitial() : super._();

  @override
  String toString() {
    return 'NetworkRequestState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkRequestInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_NetworkRequestInitial<T> value) initial,
    required TResult Function(_NetworkRequestLoading<T> value) loading,
    required TResult Function(_NetworkRequestSuccess<T> value) success,
    required TResult Function(_NetworkRequestFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkRequestInitial<T> value)? initial,
    TResult? Function(_NetworkRequestLoading<T> value)? loading,
    TResult? Function(_NetworkRequestSuccess<T> value)? success,
    TResult? Function(_NetworkRequestFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkRequestInitial<T> value)? initial,
    TResult Function(_NetworkRequestLoading<T> value)? loading,
    TResult Function(_NetworkRequestSuccess<T> value)? success,
    TResult Function(_NetworkRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _NetworkRequestInitial<T> extends NetworkRequestState<T> {
  const factory _NetworkRequestInitial() = _$_NetworkRequestInitial<T>;
  const _NetworkRequestInitial._() : super._();
}

/// @nodoc
abstract class _$$_NetworkRequestLoadingCopyWith<T, $Res> {
  factory _$$_NetworkRequestLoadingCopyWith(_$_NetworkRequestLoading<T> value,
          $Res Function(_$_NetworkRequestLoading<T>) then) =
      __$$_NetworkRequestLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NetworkRequestLoadingCopyWithImpl<T, $Res>
    extends _$NetworkRequestStateCopyWithImpl<T, $Res,
        _$_NetworkRequestLoading<T>>
    implements _$$_NetworkRequestLoadingCopyWith<T, $Res> {
  __$$_NetworkRequestLoadingCopyWithImpl(_$_NetworkRequestLoading<T> _value,
      $Res Function(_$_NetworkRequestLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkRequestLoading<T> extends _NetworkRequestLoading<T> {
  const _$_NetworkRequestLoading() : super._();

  @override
  String toString() {
    return 'NetworkRequestState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkRequestLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_NetworkRequestInitial<T> value) initial,
    required TResult Function(_NetworkRequestLoading<T> value) loading,
    required TResult Function(_NetworkRequestSuccess<T> value) success,
    required TResult Function(_NetworkRequestFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkRequestInitial<T> value)? initial,
    TResult? Function(_NetworkRequestLoading<T> value)? loading,
    TResult? Function(_NetworkRequestSuccess<T> value)? success,
    TResult? Function(_NetworkRequestFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkRequestInitial<T> value)? initial,
    TResult Function(_NetworkRequestLoading<T> value)? loading,
    TResult Function(_NetworkRequestSuccess<T> value)? success,
    TResult Function(_NetworkRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NetworkRequestLoading<T> extends NetworkRequestState<T> {
  const factory _NetworkRequestLoading() = _$_NetworkRequestLoading<T>;
  const _NetworkRequestLoading._() : super._();
}

/// @nodoc
abstract class _$$_NetworkRequestSuccessCopyWith<T, $Res> {
  factory _$$_NetworkRequestSuccessCopyWith(_$_NetworkRequestSuccess<T> value,
          $Res Function(_$_NetworkRequestSuccess<T>) then) =
      __$$_NetworkRequestSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_NetworkRequestSuccessCopyWithImpl<T, $Res>
    extends _$NetworkRequestStateCopyWithImpl<T, $Res,
        _$_NetworkRequestSuccess<T>>
    implements _$$_NetworkRequestSuccessCopyWith<T, $Res> {
  __$$_NetworkRequestSuccessCopyWithImpl(_$_NetworkRequestSuccess<T> _value,
      $Res Function(_$_NetworkRequestSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_NetworkRequestSuccess<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_NetworkRequestSuccess<T> extends _NetworkRequestSuccess<T> {
  const _$_NetworkRequestSuccess(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'NetworkRequestState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkRequestSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkRequestSuccessCopyWith<T, _$_NetworkRequestSuccess<T>>
      get copyWith => __$$_NetworkRequestSuccessCopyWithImpl<T,
          _$_NetworkRequestSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkRequestInitial<T> value) initial,
    required TResult Function(_NetworkRequestLoading<T> value) loading,
    required TResult Function(_NetworkRequestSuccess<T> value) success,
    required TResult Function(_NetworkRequestFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkRequestInitial<T> value)? initial,
    TResult? Function(_NetworkRequestLoading<T> value)? loading,
    TResult? Function(_NetworkRequestSuccess<T> value)? success,
    TResult? Function(_NetworkRequestFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkRequestInitial<T> value)? initial,
    TResult Function(_NetworkRequestLoading<T> value)? loading,
    TResult Function(_NetworkRequestSuccess<T> value)? success,
    TResult Function(_NetworkRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NetworkRequestSuccess<T> extends NetworkRequestState<T> {
  const factory _NetworkRequestSuccess(final T data) =
      _$_NetworkRequestSuccess<T>;
  const _NetworkRequestSuccess._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_NetworkRequestSuccessCopyWith<T, _$_NetworkRequestSuccess<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkRequestFailureCopyWith<T, $Res> {
  factory _$$_NetworkRequestFailureCopyWith(_$_NetworkRequestFailure<T> value,
          $Res Function(_$_NetworkRequestFailure<T>) then) =
      __$$_NetworkRequestFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_NetworkRequestFailureCopyWithImpl<T, $Res>
    extends _$NetworkRequestStateCopyWithImpl<T, $Res,
        _$_NetworkRequestFailure<T>>
    implements _$$_NetworkRequestFailureCopyWith<T, $Res> {
  __$$_NetworkRequestFailureCopyWithImpl(_$_NetworkRequestFailure<T> _value,
      $Res Function(_$_NetworkRequestFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_NetworkRequestFailure<T>(
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

class _$_NetworkRequestFailure<T> extends _NetworkRequestFailure<T> {
  const _$_NetworkRequestFailure(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'NetworkRequestState<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkRequestFailure<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkRequestFailureCopyWith<T, _$_NetworkRequestFailure<T>>
      get copyWith => __$$_NetworkRequestFailureCopyWithImpl<T,
          _$_NetworkRequestFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_NetworkRequestInitial<T> value) initial,
    required TResult Function(_NetworkRequestLoading<T> value) loading,
    required TResult Function(_NetworkRequestSuccess<T> value) success,
    required TResult Function(_NetworkRequestFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkRequestInitial<T> value)? initial,
    TResult? Function(_NetworkRequestLoading<T> value)? loading,
    TResult? Function(_NetworkRequestSuccess<T> value)? success,
    TResult? Function(_NetworkRequestFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkRequestInitial<T> value)? initial,
    TResult Function(_NetworkRequestLoading<T> value)? loading,
    TResult Function(_NetworkRequestSuccess<T> value)? success,
    TResult Function(_NetworkRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NetworkRequestFailure<T> extends NetworkRequestState<T> {
  const factory _NetworkRequestFailure(final Failure failure) =
      _$_NetworkRequestFailure<T>;
  const _NetworkRequestFailure._() : super._();

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_NetworkRequestFailureCopyWith<T, _$_NetworkRequestFailure<T>>
      get copyWith => throw _privateConstructorUsedError;
}
