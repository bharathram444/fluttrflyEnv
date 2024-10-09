import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'client_prover.dart';

import 'injector.config.dart';

final GetIt $sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies({required String env}) async {
  await $sl.init(environment: env);

  $sl
    .registerSingleton(env, instanceName: 'env');
    // ..registerSingleton(InternetConnectionChecker($sl.get()))
    // ..registerSingleton<ApiClient>(ApiClient($sl.get(), $sl.get()));
}

@module
abstract class ThirdPartyDependencies {
  @singleton
  Client get httpClient => HttpClientProvider.instance.client;

  @singleton
  Connectivity get connectivity => Connectivity();

  @singleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker(connectivity);

  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @singleton
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @factory
  DateTime get defaultDateTime => DateTime.now();

  @singleton
  ApiClient get apiClient => ApiClient(httpClient, internetConnectionChecker);
}

Future<void> register<T extends Object>(T value, {String? instanceName}) async {
  if ($sl.isRegistered<T>(instanceName: instanceName)) {
    await $sl.unregister<T>(instanceName: instanceName);
  }

  $sl.registerSingleton(value, instanceName: instanceName);
}

Future<void> unregister<T extends Object>({String? instanceName}) async {
  if ($sl.isRegistered<T>(instanceName: instanceName)) {
    await $sl.unregister<T>(instanceName: instanceName);
  }
}
