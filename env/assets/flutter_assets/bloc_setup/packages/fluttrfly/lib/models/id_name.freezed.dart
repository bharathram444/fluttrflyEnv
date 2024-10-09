// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdName _$IdNameFromJson(Map<String, dynamic> json) {
  return _IdName.fromJson(json);
}

/// @nodoc
mixin _$IdName {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this IdName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdNameCopyWith<IdName> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdNameCopyWith<$Res> {
  factory $IdNameCopyWith(IdName value, $Res Function(IdName) then) =
      _$IdNameCopyWithImpl<$Res, IdName>;
  @useResult
  $Res call({String id, @JsonKey(defaultValue: '') String name});
}

/// @nodoc
class _$IdNameCopyWithImpl<$Res, $Val extends IdName>
    implements $IdNameCopyWith<$Res> {
  _$IdNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdNameImplCopyWith<$Res> implements $IdNameCopyWith<$Res> {
  factory _$$IdNameImplCopyWith(
          _$IdNameImpl value, $Res Function(_$IdNameImpl) then) =
      __$$IdNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(defaultValue: '') String name});
}

/// @nodoc
class __$$IdNameImplCopyWithImpl<$Res>
    extends _$IdNameCopyWithImpl<$Res, _$IdNameImpl>
    implements _$$IdNameImplCopyWith<$Res> {
  __$$IdNameImplCopyWithImpl(
      _$IdNameImpl _value, $Res Function(_$IdNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$IdNameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdNameImpl implements _IdName {
  _$IdNameImpl(
      {required this.id, @JsonKey(defaultValue: '') required this.name});

  factory _$IdNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdNameImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'IdName(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of IdName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdNameImplCopyWith<_$IdNameImpl> get copyWith =>
      __$$IdNameImplCopyWithImpl<_$IdNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdNameImplToJson(
      this,
    );
  }
}

abstract class _IdName implements IdName {
  factory _IdName(
      {required final String id,
      @JsonKey(defaultValue: '') required final String name}) = _$IdNameImpl;

  factory _IdName.fromJson(Map<String, dynamic> json) = _$IdNameImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get name;

  /// Create a copy of IdName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdNameImplCopyWith<_$IdNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
