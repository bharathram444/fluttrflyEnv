// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get hasPermission => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      String? error,
      bool hasPermission,
      Address? address,
      double? latitude,
      double? longitude});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? error = freezed,
    Object? hasPermission = null,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPermission: null == hasPermission
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressStateImplCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$AddressStateImplCopyWith(
          _$AddressStateImpl value, $Res Function(_$AddressStateImpl) then) =
      __$$AddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      String? error,
      bool hasPermission,
      Address? address,
      double? latitude,
      double? longitude});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$AddressStateImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddressStateImpl>
    implements _$$AddressStateImplCopyWith<$Res> {
  __$$AddressStateImplCopyWithImpl(
      _$AddressStateImpl _value, $Res Function(_$AddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? error = freezed,
    Object? hasPermission = null,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$AddressStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPermission: null == hasPermission
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$AddressStateImpl implements _AddressState {
  const _$AddressStateImpl(
      {required this.isLoading,
      required this.isSuccess,
      this.error,
      required this.hasPermission,
      this.address,
      this.latitude,
      this.longitude});

  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final String? error;
  @override
  final bool hasPermission;
  @override
  final Address? address;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'AddressState(isLoading: $isLoading, isSuccess: $isSuccess, error: $error, hasPermission: $hasPermission, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.hasPermission, hasPermission) ||
                other.hasPermission == hasPermission) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSuccess, error,
      hasPermission, address, latitude, longitude);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      __$$AddressStateImplCopyWithImpl<_$AddressStateImpl>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  const factory _AddressState(
      {required final bool isLoading,
      required final bool isSuccess,
      final String? error,
      required final bool hasPermission,
      final Address? address,
      final double? latitude,
      final double? longitude}) = _$AddressStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  String? get error;
  @override
  bool get hasPermission;
  @override
  Address? get address;
  @override
  double? get latitude;
  @override
  double? get longitude;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
