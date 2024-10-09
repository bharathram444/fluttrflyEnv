import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' show basename;

/// A class which is responsible to make actual api calls and provide [ApiResponse]s.
///
@injectable
class ApiClient {
  const ApiClient(this.client, this.internet);

  /// HTTPClient that is going to be used to make underlying api calls. It can be easily switched
  /// any other implementations like dio.
  final http.Client client;

  /// Internet checker
  final InternetConnectionChecker internet;

  /// Performs HTTP GET request with provided request configuration
  Future<ApiResponse<T>> get<T>(RequestConfig<T> params) async {
    return _request(
      (Uri urlWithParams) => client.get(urlWithParams, headers: params.headers),
      params,
    );
  }

  /// Performs HTTP POST request with provided request configuration
  Future<ApiResponse<T>> post<T>(RequestConfig<T> params) async {
    return _request(
      (Uri urlWithParams) => client.post(urlWithParams, headers: params.headers, body: params.body),
      params,
    );
  }

  /// Performs HTTP POST-multipart-request body request with provided request configuration
  /// Note: This method is supposed to be used for uploading files only as of now because few
  /// keys have been hardcoded in the implementation.
  ///
  /// It can be easily extended to make a customized request
  Future<ApiResponse<T>> multipartRequest<T>(RequestConfig<T> params) async {
    return _request(
      (Uri urlWithParams) async {
        final http.MultipartRequest request = http.MultipartRequest('POST', urlWithParams);
        final Map<String, String>? headers = params.headers;
        final Map<String, dynamic>? reqParams = params.reqParams;

        if (headers != null) {
          request.headers.addAll(headers);
        }

        if (reqParams != null) {
          for (final MapEntry<String, dynamic> param in reqParams.entries) {
            if (param.value is File?) {
              final File originalFile = param.value as File;
              final String name = reqParams['file_name'] as String? ?? basename(originalFile.path);
              final http.MultipartFile file = await http.MultipartFile.fromPath(
                'file', originalFile.path,
                filename: name,
              );
              request.files.add(file);
            } else {
              request.fields.putIfAbsent(param.key, () => param.value);
            }
          }
        }
        final http.StreamedResponse streamedResponse =
            await client.send(request);

        return http.Response.fromStream(streamedResponse);
      },
      params,
    );
  }

  Future<ApiResponse<T>> _request<T>(
    Future<http.Response> Function(Uri url) apiCall,
    RequestConfig<T> params,
  ) async {
    try {
      if (!await internet.hasInternet()) {
        throw NoInternetException(Errors.noInternet);
      }

      final Uri uri = RestUtils.constructUri(params.url, params.reqParams);
      final http.Response httpResponse = await apiCall(uri);
      final int statusCode = httpResponse.statusCode;
      final String resBody = httpResponse.body;
      
      if (kDebugMode) {
        $logger
          ..info(uri)
          ..info(params.body ?? params.reqParams)
          ..info(params.headers)
          ..info('Status Code $statusCode')
          ..info('Response : $resBody');
      }

      if (statusCode == HttpStatus.ok) {
        if (resBody.doesNotHaveValue) {
          throw UnExpectedResponseException(resBody);
        }

        final ApiResponseParser<T> responseParser = params.apiResponseParser ?? FrappeApiResponseParser<T>();
        final ApiResponse<T> result = responseParser.parse(
          resBody,
          params.parser,
          Errors.defaultApiErrorMessage,
        );

        return result;
      } else {
        if(statusCode == HttpStatus.gatewayTimeout) {
          throw ServerException(Errors.gatewayTimeout);
        } else if(statusCode == HttpStatus.unauthorized) {
          throw ServerException(Errors.invalidcredentials);
        } else if ((statusCode >= HttpStatus.internalServerError &&
            statusCode <= HttpStatus.networkConnectTimeoutError) || statusCode == HttpStatus.expectationFailed) {
          final message = defaultErrorParser(jsonDecode(resBody), Errors.internalServerError);
          throw ServerException(message);
        } else if (statusCode >= HttpStatus.badRequest &&
            statusCode <= HttpStatus.clientClosedRequest) {
          throw ClientException(Errors.clientError);
        } else {
          throw UnknownException(Errors.unknown);
        }
      }
    } on ServerException catch(e, _) {
      throw BaseApiException(e.message);
    } on FormatException catch (e) {
      throw ParseException(e.message);
    } on Exception catch (e, st) {
      $logger.error('[API client SocketException]',e, st);
      if (e is NoInternetException ||
          e is UnExpectedResponseException ||
          e is UnAuthorizedException ||
          e is ClientException ||
          e is ServerException) {
        rethrow;
      }
      throw UnknownException(Errors.unknown);
    }
  }
}