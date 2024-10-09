// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'sid')
  String get sid => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_key')
  String get apiKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_secret')
  String get apiSecret => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_id')
  String get empId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name', defaultValue: '')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey()
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sid') String sid,
      @JsonKey(name: 'api_key') String apiKey,
      @JsonKey(name: 'api_secret') String apiSecret,
      @JsonKey(name: 'emp_id') String empId,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'full_name', defaultValue: '') String? fullName,
      @JsonKey() String? email});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
    Object? apiKey = null,
    Object? apiSecret = null,
    Object? empId = null,
    Object? message = null,
    Object? fullName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      apiSecret: null == apiSecret
          ? _value.apiSecret
          : apiSecret // ignore: cast_nullable_to_non_nullable
              as String,
      empId: null == empId
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sid') String sid,
      @JsonKey(name: 'api_key') String apiKey,
      @JsonKey(name: 'api_secret') String apiSecret,
      @JsonKey(name: 'emp_id') String empId,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'full_name', defaultValue: '') String? fullName,
      @JsonKey() String? email});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
    Object? apiKey = null,
    Object? apiSecret = null,
    Object? empId = null,
    Object? message = null,
    Object? fullName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserImpl(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      apiSecret: null == apiSecret
          ? _value.apiSecret
          : apiSecret // ignore: cast_nullable_to_non_nullable
              as String,
      empId: null == empId
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'sid') required this.sid,
      @JsonKey(name: 'api_key') required this.apiKey,
      @JsonKey(name: 'api_secret') required this.apiSecret,
      @JsonKey(name: 'emp_id') required this.empId,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'full_name', defaultValue: '') this.fullName,
      @JsonKey() this.email});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'sid')
  final String sid;
  @override
  @JsonKey(name: 'api_key')
  final String apiKey;
  @override
  @JsonKey(name: 'api_secret')
  final String apiSecret;
  @override
  @JsonKey(name: 'emp_id')
  final String empId;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'full_name', defaultValue: '')
  final String? fullName;
  @override
  @JsonKey()
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(sid: $sid, apiKey: $apiKey, apiSecret: $apiSecret, empId: $empId, message: $message, fullName: $fullName, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('sid', sid))
      ..add(DiagnosticsProperty('apiKey', apiKey))
      ..add(DiagnosticsProperty('apiSecret', apiSecret))
      ..add(DiagnosticsProperty('empId', empId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.apiSecret, apiSecret) ||
                other.apiSecret == apiSecret) &&
            (identical(other.empId, empId) || other.empId == empId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, sid, apiKey, apiSecret, empId, message, fullName, email);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'sid') required final String sid,
      @JsonKey(name: 'api_key') required final String apiKey,
      @JsonKey(name: 'api_secret') required final String apiSecret,
      @JsonKey(name: 'emp_id') required final String empId,
      @JsonKey(name: 'message') required final String message,
      @JsonKey(name: 'full_name', defaultValue: '') final String? fullName,
      @JsonKey() final String? email}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'sid')
  String get sid;
  @override
  @JsonKey(name: 'api_key')
  String get apiKey;
  @override
  @JsonKey(name: 'api_secret')
  String get apiSecret;
  @override
  @JsonKey(name: 'emp_id')
  String get empId;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'full_name', defaultValue: '')
  String? get fullName;
  @override
  @JsonKey()
  String? get email;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
