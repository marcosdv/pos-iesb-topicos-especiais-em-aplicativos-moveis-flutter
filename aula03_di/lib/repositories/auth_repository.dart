import 'package:aula03_di/datasources/local/auth_local_datasource.dart';
import 'package:aula03_di/datasources/remote/auth_remote_datasource.dart';
import 'package:aula03_di/models/usuario.dart';
import 'package:injectable/injectable.dart';

@injectable //registerFactory
class AuthRepository {
  final AuthLocalDatasource _localDatasource;
  final AuthRemoteDatasource _remoteDatasource;

  AuthRepository(this._localDatasource, this._remoteDatasource);

  Usuario? getUsuario() {
    Usuario? usuario = _localDatasource.getUsuario();
    usuario ??= _remoteDatasource.getUsuario();

    return usuario;
  }
}