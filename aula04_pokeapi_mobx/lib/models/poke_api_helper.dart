import 'package:aula04_pokeapi_mobx/models/pokemon.dart';

class PokeApiHelper {
  late List<Pokemon> pokemon;

  PokeApiHelper({required  this.pokemon});

  PokeApiHelper.fromJson(Map<String, dynamic> json) {
    pokemon = [];
    if (json['pokemon'] != null) {
      json['pokemon'].forEach((item) {
        pokemon.add(Pokemon.fromJson(item));
      });
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> dados = {};
    dados['pokemon'] = pokemon.map((item) => item.toJson()).toList();
    return dados;
  }
}