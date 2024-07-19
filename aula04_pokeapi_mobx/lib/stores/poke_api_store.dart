import 'dart:convert';

import 'package:aula04_pokeapi_mobx/consts/consts_api.dart';
import 'package:aula04_pokeapi_mobx/consts/consts_app.dart';
import 'package:aula04_pokeapi_mobx/infra/http_client.dart';
import 'package:aula04_pokeapi_mobx/models/poke_api_helper.dart';
import 'package:aula04_pokeapi_mobx/models/pokemon.dart';
import 'package:mobx/mobx.dart';

part 'poke_api_store.g.dart';

class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {
  @observable
  PokeApiHelper? _pokeApi;

  @observable
  Pokemon? _pokemonAtual;

  @observable
  dynamic corPokemon;

  @observable
  int? posicaoAtual;

  @computed
  PokeApiHelper? get pokeApi => _pokeApi;

  @computed
  Pokemon? get pokemonAtual => _pokemonAtual;

  Pokemon? getPokemon({required int index}) {
    return _pokeApi?.pokemon[index];
  }

  @action
  setPokemonAtual({required int index}) {
    _pokemonAtual = _pokeApi?.pokemon[index];
    corPokemon = ConstsApp.getColorType(type: _pokemonAtual?.type[0] ?? '');
    posicaoAtual = index;
  }

  @action
  void buscarPokemons() {
    _pokeApi = null;
    _loadPokeApi().then((listaApi) {
      _pokeApi = listaApi;
    });
  }

  Future<PokeApiHelper?> _loadPokeApi() async {
    try {
      final response = await HttpClient().get(ConstsApi.urlPokeApi);
      var dadosJson = jsonDecode(response.body);
      return PokeApiHelper.fromJson(dadosJson);
    } catch (erro, stacktrace) {
      print('Erro ao carregar a PokeApi: $stacktrace');
      return null;
    }
  }
}