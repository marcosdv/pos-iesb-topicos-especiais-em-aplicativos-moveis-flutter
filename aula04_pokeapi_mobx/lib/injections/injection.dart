import 'package:aula04_pokeapi_mobx/stores/poke_api_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void configurarDependencias() {
  getIt.registerSingleton(PokeApiStore());
}