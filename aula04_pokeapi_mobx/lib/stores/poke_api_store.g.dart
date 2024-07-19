// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_api_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokeApiStore on _PokeApiStoreBase, Store {
  Computed<PokeApiHelper?>? _$pokeApiComputed;

  @override
  PokeApiHelper? get pokeApi =>
      (_$pokeApiComputed ??= Computed<PokeApiHelper?>(() => super.pokeApi,
              name: '_PokeApiStoreBase.pokeApi'))
          .value;
  Computed<Pokemon?>? _$pokemonAtualComputed;

  @override
  Pokemon? get pokemonAtual =>
      (_$pokemonAtualComputed ??= Computed<Pokemon?>(() => super.pokemonAtual,
              name: '_PokeApiStoreBase.pokemonAtual'))
          .value;

  late final _$_pokeApiAtom =
      Atom(name: '_PokeApiStoreBase._pokeApi', context: context);

  @override
  PokeApiHelper? get _pokeApi {
    _$_pokeApiAtom.reportRead();
    return super._pokeApi;
  }

  @override
  set _pokeApi(PokeApiHelper? value) {
    _$_pokeApiAtom.reportWrite(value, super._pokeApi, () {
      super._pokeApi = value;
    });
  }

  late final _$_pokemonAtualAtom =
      Atom(name: '_PokeApiStoreBase._pokemonAtual', context: context);

  @override
  Pokemon? get _pokemonAtual {
    _$_pokemonAtualAtom.reportRead();
    return super._pokemonAtual;
  }

  @override
  set _pokemonAtual(Pokemon? value) {
    _$_pokemonAtualAtom.reportWrite(value, super._pokemonAtual, () {
      super._pokemonAtual = value;
    });
  }

  late final _$corPokemonAtom =
      Atom(name: '_PokeApiStoreBase.corPokemon', context: context);

  @override
  dynamic get corPokemon {
    _$corPokemonAtom.reportRead();
    return super.corPokemon;
  }

  @override
  set corPokemon(dynamic value) {
    _$corPokemonAtom.reportWrite(value, super.corPokemon, () {
      super.corPokemon = value;
    });
  }

  late final _$posicaoAtualAtom =
      Atom(name: '_PokeApiStoreBase.posicaoAtual', context: context);

  @override
  int? get posicaoAtual {
    _$posicaoAtualAtom.reportRead();
    return super.posicaoAtual;
  }

  @override
  set posicaoAtual(int? value) {
    _$posicaoAtualAtom.reportWrite(value, super.posicaoAtual, () {
      super.posicaoAtual = value;
    });
  }

  late final _$_PokeApiStoreBaseActionController =
      ActionController(name: '_PokeApiStoreBase', context: context);

  @override
  dynamic setPokemonAtual({required int index}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.setPokemonAtual');
    try {
      return super.setPokemonAtual(index: index);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buscarPokemons() {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.buscarPokemons');
    try {
      return super.buscarPokemons();
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
posicaoAtual: ${posicaoAtual},
pokeApi: ${pokeApi},
pokemonAtual: ${pokemonAtual}
    ''';
  }
}
