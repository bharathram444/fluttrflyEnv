import 'package:dartz/dartz.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    T? data,
    String? error,
    int? status,
  }) = _ApiResponse<T>;

  const ApiResponse._();

  factory ApiResponse.failure(String error, {int? status}) => ApiResponse<T>(error: error, status: status ?? failureStatus);

  factory ApiResponse.success(T data) => ApiResponse<T>(data: data, status: successStatus);

  bool isSuccess() => data != null && error == null && status! >= 0;

  bool isFailed() =>
      error != null && data == null && [400, 409].contains(status);

  static int successStatus = 200;
  static int failureStatus = 100;
}

extension ApiResponseExt<T> on ApiResponse<T> {
  Either<Failure, T> handle() {
    if(isSuccess() && data != null) {
      return right(data as T);
    } else {
      return left(Failure(error: error!));
    }
  }
}