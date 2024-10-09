import 'package:fluttrfly/network/response_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_config.freezed.dart';

@freezed
class RequestConfig<T> with _$RequestConfig<T> {
  factory RequestConfig({
    required String url,
    required T Function(Map<String, dynamic>) parser,
    Map<String, dynamic>? reqParams,
    Map<String, String>? headers,
    ApiResponseParser<T>? apiResponseParser,
    String? body,
  }) = _RequestConfig<T>;
}