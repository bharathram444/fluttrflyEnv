// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      country: json['country'] as String,
      stateName: json['state_name'] as String,
      city: json['city'] as String,
      locality: json['locality'] as String,
      pinCode: json['pin_code'] as String,
      street: json['street'] as String,
      buildingNumber: json['building_number'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'state_name': instance.stateName,
      'city': instance.city,
      'locality': instance.locality,
      'pin_code': instance.pinCode,
      'street': instance.street,
      'building_number': instance.buildingNumber,
    };
