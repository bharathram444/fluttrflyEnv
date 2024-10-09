import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fluttrfly/fluttrfly.dart';

import 'app_task_either.dart';
import '../di/injector.dart';
import '../../features/auth/model/user.dart';

typedef ApiCall<T> = Future<ApiResponse<T>> Function(RequestConfig<T> config);
typedef StandardApiResponse<T> = Future<Either<Failure, ApiResponse<T>>>;

abstract class BaseApiRepo {
  const BaseApiRepo(this.client);

  final ApiClient client;

  User user() => $sl.get<User>();
  bool get isRegistered => $sl.isRegistered<User>();
  String getApiKey() => $sl.get<User>().apiKey;
  String getApiSecret() => $sl.get<User>().apiSecret;

  StandardApiResponse<T> get<T>(RequestConfig<T> params,
      {bool includeAuthHeader = true}) async {
    try {
      return _request(client.get, params, includeAuthHeader: includeAuthHeader);
    } on Exception catch (e, st) {
      $logger.error('[Api Failure]', e, st);
      return left(Failure(error: e.toString()));
    }
  }

  StandardApiResponse<T> post<T>(
    RequestConfig<T> params, {
    bool includeAuthHeader = true,
  }) async {
    final preHeaders = params.headers ?? {};
    preHeaders[HttpHeaders.contentTypeHeader] = 'application/json';
    return _request(client.post, params.copyWith(headers: preHeaders),
        includeAuthHeader: includeAuthHeader);
  }

  StandardApiResponse<T> multiPart<T>(
    RequestConfig<T> params, {
    bool includeAuthHeader = true,
  }) async {
    return _request(client.multipartRequest, params,
        includeAuthHeader: includeAuthHeader);
  }

  StandardApiResponse<T> _request<T>(
      ApiCall<T> apiCall, RequestConfig<T> config,
      {bool includeAuthHeader = true}) async {
    try {
      final commonHeaders = <String, dynamic>{
        HttpHeaders.contentTypeHeader: 'application/json'
      };
      if (includeAuthHeader) {
        final cookie = await _getAuthHeader();
        commonHeaders.addAll(cookie);
      }

      final RequestConfig<T> requestConfig = config.copyWith(
        headers: {...config.headers ?? {}, ...commonHeaders},
      );

      final ApiResponse<T> response = await apiCall(requestConfig);

      if (response.isFailed()) {
        return left(Failure(error: response.error!));
      }

      return right(response);
    } on BaseApiException catch (e, _) {
      return left(Failure(error: e.message));
    } on Exception catch (e, st) {
      $logger
        ..info('Log 2')
        ..error(e.toString(), e, st);

      return left(Failure(error: e.toString()));
    }
  }

  Future<Map<String, dynamic>> _getAuthHeader() async {
    if ($sl.isRegistered<User>()) {
      final user = $sl.get<User>();
      final apiKey = user.apiKey;
      final apiSecret = user.apiSecret;
      if (apiKey.doesNotHaveValue || apiSecret.doesNotHaveValue) return {};
      return {HttpHeaders.authorizationHeader: 'token $apiKey:$apiSecret'};
    }
    return {};
  }

  AsyncValueOf<T> executeSafely<T>(AsyncValueOf<T> Function() asyncFunction) {
    return AppTaskEither.tryCatch(
      () async {
        final result = await asyncFunction();
        return result.fold((failure) => throw failure.error, (value) => value);
      },
      (error, stack) {
        $logger
          ..error('[BaseApiRepo]', error, stack)
          ..info(stack);
        return Failure(error: error.toString());
      },
    ).run();
  }

  Map<String, String> addCommonApiHeaders([Map<String, String>? original]) {
    final newMap = {
      ...original ?? {},
      if (isRegistered)
        HttpHeaders.authorizationHeader:
            'token ${getApiKey()}:${getApiSecret()}',
    };

    return newMap;
  }

  Map<String, dynamic> removeNullValues(Map<String, dynamic> map) {
    map.removeWhere((key, value) => value == null);
    Map<String, dynamic> stringifiedMap = {};

    map.forEach((key, value) {
      if (value is! File) {
        stringifiedMap[key] = value.toString();
      } else {
        stringifiedMap[key] = value;
      }
    });
    return stringifiedMap;
  }
}
