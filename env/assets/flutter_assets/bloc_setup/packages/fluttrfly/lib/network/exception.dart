import 'dart:core';

class BaseApiException implements Exception {
  const BaseApiException(this.message);

  final String message;

  @override
  String toString() => message;
}

class NoInternetException extends BaseApiException {
  const NoInternetException(super.message);
}

class TimeoutException extends BaseApiException {
  const TimeoutException(super.message);
}

class UnAuthorizedException extends BaseApiException {
  const UnAuthorizedException(super.message);
}

class UnExpectedResponseException extends BaseApiException {
  const UnExpectedResponseException(super.message);
}

class ConnectionException extends BaseApiException {
  const ConnectionException(super.message);
}

class UnknownException extends BaseApiException {
  const UnknownException(super.message);
}

class ParseException extends BaseApiException {
  const ParseException(super.message);
}

class ClientException extends BaseApiException {
  const ClientException(super.message);
}

class ServerException extends BaseApiException {
  const ServerException(super.message);
}
