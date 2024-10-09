// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressState {
  String? get address => throw _privateConstructorUsedError;
  String? get geoLocation => throw _privateConstructorUsedError;
  Placemark? get placemark => throw _privateConstructorUsedError;

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
  $Res call({String? address, String? geoLocation, Placemark? placemark});
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
    Object? address = freezed,
    Object? geoLocation = freezed,
    Object? placemark = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLocation: freezed == geoLocation
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      placemark: freezed == placemark
          ? _value.placemark
          : placemark // ignore: cast_nullable_to_non_nullable
              as Placemark?,
    ) as $Val);
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
  $Res call({String? address, String? geoLocation, Placemark? placemark});
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
    Object? address = freezed,
    Object? geoLocation = freezed,
    Object? placemark = freezed,
  }) {
    return _then(_$AddressStateImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLocation: freezed == geoLocation
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      placemark: freezed == placemark
          ? _value.placemark
          : placemark // ignore: cast_nullable_to_non_nullable
              as Placemark?,
    ));
  }
}

/// @nodoc

class _$AddressStateImpl implements _AddressState {
  const _$AddressStateImpl({this.address, this.geoLocation, this.placemark});

  @override
  final String? address;
  @override
  final String? geoLocation;
  @override
  final Placemark? placemark;

  @override
  String toString() {
    return 'AddressState(address: $address, geoLocation: $geoLocation, placemark: $placemark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressStateImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.geoLocation, geoLocation) ||
                other.geoLocation == geoLocation) &&
            (identical(other.placemark, placemark) ||
                other.placemark == placemark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, geoLocation, placemark);

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
      {final String? address,
      final String? geoLocation,
      final Placemark? placemark}) = _$AddressStateImpl;

  @override
  String? get address;
  @override
  String? get geoLocation;
  @override
  Placemark? get placemark;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
