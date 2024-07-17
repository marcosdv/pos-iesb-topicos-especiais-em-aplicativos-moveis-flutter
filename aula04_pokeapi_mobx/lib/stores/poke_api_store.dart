import 'dart:convert';

import 'package:aula04_pokeapi_mobx/consts/consts_api.dart';
import 'package:aula04_pokeapi_mobx/infra/http_client.dart';
import 'package:aula04_pokeapi_mobx/models/poke_api_helper.dart';
import 'package:mobx/mobx.dart';

class PokeApiStore { }

abstract class _PokeApiStoreBase with Store {
  @observable
  PokeApiHelper? _pokeApi;

  @computed
  PokeApiHelper? get pokeApi => _pokeApi;

  Future<PokeApiHelper?> loadPokeApi() async {
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