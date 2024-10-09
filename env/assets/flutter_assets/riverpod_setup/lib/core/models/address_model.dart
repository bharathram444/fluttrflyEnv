// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'state_name') required String stateName,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'locality') required String locality,
    @JsonKey(name: 'pin_code') required String pinCode,
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'building_number') required String buildingNumber,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  factory Address.empty() => const Address(
        country: '',
        stateName: '',
        city: '',
        locality: '',
        pinCode: '',
        street: '',
        buildingNumber: '',
      );
}