import 'package:aula03_di/models/usuario.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable //registerFactory
class AuthRemoteDatasource {
  Dio dio;

  AuthRemoteDatasource(this.dio);

  Usuario? getUsuario() {
    //Buscar o usuario na API da Web - JSON - dio
    return Usuario('Usuário - ApiWeb');
  }
}