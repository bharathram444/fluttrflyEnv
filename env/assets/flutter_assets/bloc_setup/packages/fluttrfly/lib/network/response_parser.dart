import 'dart:convert';

import 'package:fluttrfly/fluttrfly.dart';

typedef ApiObjectParser<T> = T Function(Map<String, dynamic>);

abstract class ApiResponseParser<T> {
  ApiResponse<T> parse(
      String response, ApiObjectParser<T> parser, String defErrorMessage);
}

class FrappeApiResponseParser<T> implements ApiResponseParser<T> {
  @override
  ApiResponse<T> parse(
    String apiResponse,
    ApiObjectParser<T> parser,
    String defErrorMessage,
  ) {
    try {
      final response = json.decode(apiResponse) as Map<String, dynamic>;
      final message = response['message'];
      if (message is List<dynamic>) {
        final res = parser(response);
        return ApiResponse.success(res);
      }
      final messageObj = response['message'];
      if (messageObj is Map<String, dynamic>) {
        if (messageObj.containsKey('status')) {
          final status = messageObj['status'];
          if (status == 200) {
            final result = parser(response);
            return ApiResponse.success(result);
          } else if (status == 400) {
            final message = messageObj['message'];
            return ApiResponse.failure(message, status: 400);
          }
        }
        if (response.containsKey('_server_messages')) {
          final serverMsgs =
              json.decode(response['_server_messages']) as List<dynamic>;
          if (serverMsgs.isNotEmpty) {
            final messageData = json.decode(serverMsgs.first);
            final errorMsg = messageData['message'];
            return ApiResponse.failure(errorMsg, status: 400);
          }
        }
      } else if (messageObj is String) {
        final result = parser(response);
        return ApiResponse.success(result);
      }

      final result = parser(response);
      return ApiResponse.success(result);
    } on Exception catch (e, st) {
      $logger.error('[ResponseParser]', e, st);
      throw Exception(e);
    }
  }
}

class Errors {
  static String get sessionExpired =>
      'Your session has expired. You will be redirected to the Login Page.';
  static String get noInternet => 'Please check your internet connection';
  static String get emptyApiResponse => 'Received empty response from server';
  static String get defaultApiErrorMessage =>
      'Unfortunately something went wrong. Please try again a moment later';
  static String get unknown => 'Unknown error occurred';
  static String get connectionIssue =>
      'Could not connect to server. Please check your internet';
  static String get internalServerError => 'Internal Server Error';
  static String get unauthorized =>
      'Looks like you do not have access to this information';
  static String get invalidcredentials =>
      'Wrong credentials.\nInvalid Username or Password';
  static String get clientError =>
      'Unfortunately we could not complete the request.';
  static String get responseIsNotValidJson => 'Invalid json response';
  static String get unrecognizedResponse => 'Unsupported response format';
  static String get gatewayTimeout =>
      'Server is taking too long to respond. Please try again later.';
  // Login
  static String get invalidUser => 'Invalid User';
}
