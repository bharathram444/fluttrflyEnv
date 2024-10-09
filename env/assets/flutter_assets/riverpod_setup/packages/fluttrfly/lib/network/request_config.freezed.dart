// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestConfig<T> {
  String get url => throw _privateConstructorUsedError;
  T Function(Map<String, dynamic>) get parser =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get reqParams => throw _privateConstructorUsedError;
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  ApiResponseParser<T>? get apiResponseParser =>
      throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  /// Create a copy of RequestConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestConfigCopyWith<T, RequestConfig<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestConfigCopyWith<T, $Res> {
  factory $RequestConfigCopyWith(
          RequestConfig<T> value, $Res Function(RequestConfig<T>) then) =
      _$RequestConfigCopyWithImpl<T, $Res, RequestConfig<T>>;
  @useResult
  $Res call(
      {String url,
      T Function(Map<String, dynamic>) parser,
      Map<String, dynamic>? reqParams,
      Map<String, String>? headers,
      ApiResponseParser<T>? apiResponseParser,
      String? body});
}

/// @nodoc
class _$RequestConfigCopyWithImpl<T, $Res, $Val extends RequestConfig<T>>
    implements $RequestConfigCopyWith<T, $Res> {
  _$RequestConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? parser = null,
    Object? reqParams = freezed,
    Object? headers = freezed,
    Object? apiResponseParser = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      parser: null == parser
          ? _value.parser
          : parser // ignore: cast_nullable_to_non_nullable
              as T Function(Map<String, dynamic>),
      reqParams: freezed == reqParams
          ? _value.reqParams
          : reqParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      apiResponseParser: freezed == apiResponseParser
          ? _value.apiResponseParser
          : apiResponseParser // ignore: cast_nullable_to_non_nullable
              as ApiResponseParser<T>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestConfigImplCopyWith<T, $Res>
    implements $RequestConfigCopyWith<T, $Res> {
  factory _$$RequestConfigImplCopyWith(_$RequestConfigImpl<T> value,
          $Res Function(_$RequestConfigImpl<T>) then) =
      __$$RequestConfigImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String url,
      T Function(Map<String, dynamic>) parser,
      Map<String, dynamic>? reqParams,
      Map<String, String>? headers,
      ApiResponseParser<T>? apiResponseParser,
      String? body});
}

/// @nodoc
class __$$RequestConfigImplCopyWithImpl<T, $Res>
    extends _$RequestConfigCopyWithImpl<T, $Res, _$RequestConfigImpl<T>>
    implements _$$RequestConfigImplCopyWith<T, $Res> {
  __$$RequestConfigImplCopyWithImpl(_$RequestConfigImpl<T> _value,
      $Res Function(_$RequestConfigImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RequestConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? parser = null,
    Object? reqParams = freezed,
    Object? headers = freezed,
    Object? apiResponseParser = freezed,
    Object? body = freezed,
  }) {
    return _then(_$RequestConfigImpl<T>(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      parser: null == parser
          ? _value.parser
          : parser // ignore: cast_nullable_to_non_nullable
              as T Function(Map<String, dynamic>),
      reqParams: freezed == reqParams
          ? _value._reqParams
          : reqParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      apiResponseParser: freezed == apiResponseParser
          ? _value.apiResponseParser
          : apiResponseParser // ignore: cast_nullable_to_non_nullable
              as ApiResponseParser<T>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestConfigImpl<T> implements _RequestConfig<T> {
  _$RequestConfigImpl(
      {required this.url,
      required this.parser,
      final Map<String, dynamic>? reqParams,
      final Map<String, String>? headers,
      this.apiResponseParser,
      this.body})
      : _reqParams = reqParams,
        _headers = headers;

  @override
  final String url;
  @override
  final T Function(Map<String, dynamic>) parser;
  final Map<String, dynamic>? _reqParams;
  @override
  Map<String, dynamic>? get reqParams {
    final value = _reqParams;
    if (value == null) return null;
    if (_reqParams is EqualUnmodifiableMapView) return _reqParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ApiResponseParser<T>? apiResponseParser;
  @override
  final String? body;

  @override
  String toString() {
    return 'RequestConfig<$T>(url: $url, parser: $parser, reqParams: $reqParams, headers: $headers, apiResponseParser: $apiResponseParser, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestConfigImpl<T> &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.parser, parser) || other.parser == parser) &&
            const DeepCollectionEquality()
                .equals(other._reqParams, _reqParams) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.apiResponseParser, apiResponseParser) ||
                other.apiResponseParser == apiResponseParser) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      parser,
      const DeepCollectionEquality().hash(_reqParams),
      const DeepCollectionEquality().hash(_headers),
      apiResponseParser,
      body);

  /// Create a copy of RequestConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestConfigImplCopyWith<T, _$RequestConfigImpl<T>> get copyWith =>
      __$$RequestConfigImplCopyWithImpl<T, _$RequestConfigImpl<T>>(
          this, _$identity);
}

abstract class _RequestConfig<T> implements RequestConfig<T> {
  factory _RequestConfig(
      {required final String url,
      required final T Function(Map<String, dynamic>) parser,
      final Map<String, dynamic>? reqParams,
      final Map<String, String>? headers,
      final ApiResponseParser<T>? apiResponseParser,
      final String? body}) = _$RequestConfigImpl<T>;

  @override
  String get url;
  @override
  T Function(Map<String, dynamic>) get parser;
  @override
  Map<String, dynamic>? get reqParams;
  @override
  Map<String, String>? get headers;
  @override
  ApiResponseParser<T>? get apiResponseParser;
  @override
  String? get body;

  /// Create a copy of RequestConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestConfigImplCopyWith<T, _$RequestConfigImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
