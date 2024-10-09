// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:fluttrfly/fluttrfly.dart' as _i353;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/auth_repo.dart' as _i585;
import '../../features/auth/data/auth_repo_impl.dart' as _i328;
import '../../features/auth/presentation/cubit/auth/auth_cubit.dart' as _i546;
import '../../features/auth/presentation/cubit/sign_in/sign_in_cubit.dart'
    as _i302;
import '../core.dart' as _i351;
import '../local_storage/key_vale_storage.dart' as _i1012;
import 'injector.dart' as _i811;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyDependencies = _$ThirdPartyDependencies();
    gh.factory<DateTime>(() => thirdPartyDependencies.defaultDateTime);
    gh.factory<_i353.ApiClient>(() => thirdPartyDependencies.apiClient);
    gh.singleton<_i519.Client>(() => thirdPartyDependencies.httpClient);
    gh.singleton<_i353.Connectivity>(() => thirdPartyDependencies.connectivity);
    gh.singleton<_i353.InternetConnectionChecker>(
        () => thirdPartyDependencies.internetConnectionChecker);
    gh.singleton<_i558.FlutterSecureStorage>(
        () => thirdPartyDependencies.secureStorage);
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => thirdPartyDependencies.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i1012.KeyValueStorage>(() => _i1012.KeyValueStorage(
          gh<_i558.FlutterSecureStorage>(),
          gh<_i460.SharedPreferences>(),
        ));
    gh.lazySingleton<_i585.AuthRepo>(() => _i328.AuthRepoImpl(
          gh<_i353.ApiClient>(),
          gh<_i351.KeyValueStorage>(),
        ));
    gh.factory<_i546.AuthCubit>(() => _i546.AuthCubit(gh<_i585.AuthRepo>()));
    gh.factory<_i302.SignInCubit>(
        () => _i302.SignInCubit(gh<_i585.AuthRepo>()));
    return this;
  }
}

class _$ThirdPartyDependencies extends _i811.ThirdPartyDependencies {}
