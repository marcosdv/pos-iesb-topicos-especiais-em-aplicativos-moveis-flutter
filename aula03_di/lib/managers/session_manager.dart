import 'package:aula03_di/models/usuario.dart';
import 'package:aula03_di/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton //registerLazySingleton
class SessionManager {
  Usuario? usuario;

  AuthRepository _authRepository;

  SessionManager(this._authRepository) {
    _getUsuario();
  }

  void _getUsuario() {
    usuario = _authRepository.getUsuario();
  }
}