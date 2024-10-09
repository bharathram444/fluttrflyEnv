// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_name')
  String get stateName => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'locality')
  String get locality => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_code')
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_number')
  String get buildingNumber => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'state_name') String stateName,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'locality') String locality,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building_number') String buildingNumber});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? stateName = null,
    Object? city = null,
    Object? locality = null,
    Object? pinCode = null,
    Object? street = null,
    Object? buildingNumber = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: null == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'state_name') String stateName,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'locality') String locality,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building_number') String buildingNumber});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? stateName = null,
    Object? city = null,
    Object? locality = null,
    Object? pinCode = null,
    Object? street = null,
    Object? buildingNumber = null,
  }) {
    return _then(_$AddressImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: null == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'state_name') required this.stateName,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'locality') required this.locality,
      @JsonKey(name: 'pin_code') required this.pinCode,
      @JsonKey(name: 'street') required this.street,
      @JsonKey(name: 'building_number') required this.buildingNumber});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'state_name')
  final String stateName;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'locality')
  final String locality;
  @override
  @JsonKey(name: 'pin_code')
  final String pinCode;
  @override
  @JsonKey(name: 'street')
  final String street;
  @override
  @JsonKey(name: 'building_number')
  final String buildingNumber;

  @override
  String toString() {
    return 'Address(country: $country, stateName: $stateName, city: $city, locality: $locality, pinCode: $pinCode, street: $street, buildingNumber: $buildingNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, stateName, city,
      locality, pinCode, street, buildingNumber);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@JsonKey(name: 'country') required final String country,
      @JsonKey(name: 'state_name') required final String stateName,
      @JsonKey(name: 'city') required final String city,
      @JsonKey(name: 'locality') required final String locality,
      @JsonKey(name: 'pin_code') required final String pinCode,
      @JsonKey(name: 'street') required final String street,
      @JsonKey(name: 'building_number')
      required final String buildingNumber}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'state_name')
  String get stateName;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'locality')
  String get locality;
  @override
  @JsonKey(name: 'pin_code')
  String get pinCode;
  @override
  @JsonKey(name: 'street')
  String get street;
  @override
  @JsonKey(name: 'building_number')
  String get buildingNumber;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
