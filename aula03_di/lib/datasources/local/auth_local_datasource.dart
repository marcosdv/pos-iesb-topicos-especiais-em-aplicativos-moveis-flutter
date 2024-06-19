import 'package:aula03_di/models/usuario.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable //registerFactory
class AuthLocalDatasource {
  SharedPreferences sharedPreferences;

  AuthLocalDatasource(this.sharedPreferences);

  Usuario? getUsuario() {
    //Busca na base local - sharedPreferences
    return null; //Usuario('Usuário - Local');
  }
}