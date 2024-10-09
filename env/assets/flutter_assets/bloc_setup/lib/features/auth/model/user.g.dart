// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      sid: json['sid'] as String,
      apiKey: json['api_key'] as String,
      apiSecret: json['api_secret'] as String,
      empId: json['emp_id'] as String,
      message: json['message'] as String,
      fullName: json['full_name'] as String? ?? '',
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'sid': instance.sid,
      'api_key': instance.apiKey,
      'api_secret': instance.apiSecret,
      'emp_id': instance.empId,
      'message': instance.message,
      'full_name': instance.fullName,
      'email': instance.email,
    };
