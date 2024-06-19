import 'package:aula03_di/datasources/local/auth_local_datasource.dart';
import 'package:aula03_di/datasources/remote/auth_remote_datasource.dart';
import 'package:aula03_di/injections/injection.config.dart';
import 'package:aula03_di/managers/session_manager.dart';
import 'package:aula03_di/repositories/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.I;

/*
Future<void> configureDependencies() async {
  //registerFactory -> Cria uma nova instancia sem que chamado
  //registerSingleton -> Cria uma instancia unica para o App ao executar o configureDependencies.
  //registerLazySingleton -> Cria uma instancia unica para o App ao ser chamado pela primeira vez.

  getIt.registerLazySingleton(() => Dio());

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  getIt.registerFactory(() => AuthLocalDatasource(getIt()));
  getIt.registerFactory(() => AuthRemoteDatasource(getIt()));
  getIt.registerFactory(() => AuthRepository(getIt(), getIt()));

  getIt.registerLazySingleton(() => SessionManager(getIt()));

  //getIt.registerSingleton(SessionManager());
  //getIt.registerFactory(() => SessionManager());
}
*/

@InjectableInit()
Future<void> configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();
}