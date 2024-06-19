// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aula03_di/datasources/local/auth_local_datasource.dart' as _i6;
import 'package:aula03_di/datasources/remote/auth_remote_datasource.dart'
    as _i5;
import 'package:aula03_di/injections/injection.dart' as _i9;
import 'package:aula03_di/managers/session_manager.dart' as _i8;
import 'package:aula03_di/repositories/auth_repository.dart' as _i7;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    await gh.lazySingletonAsync<_i4.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i5.AuthRemoteDatasource>(
        () => _i5.AuthRemoteDatasource(gh<_i3.Dio>()));
    gh.factory<_i6.AuthLocalDatasource>(
        () => _i6.AuthLocalDatasource(gh<_i4.SharedPreferences>()));
    gh.factory<_i7.AuthRepository>(() => _i7.AuthRepository(
          gh<_i6.AuthLocalDatasource>(),
          gh<_i5.AuthRemoteDatasource>(),
        ));
    gh.lazySingleton<_i8.SessionManager>(
        () => _i8.SessionManager(gh<_i7.AuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
