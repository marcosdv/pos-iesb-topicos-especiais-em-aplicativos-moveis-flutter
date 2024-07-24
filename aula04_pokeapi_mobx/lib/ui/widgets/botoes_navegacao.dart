import 'package:aula04_pokeapi_mobx/injections/injection.dart';
import 'package:aula04_pokeapi_mobx/stores/poke_api_store.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BotoesNavegacao extends StatelessWidget {
  final PokeApiStore _pokeApiStore = getIt();

  BotoesNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _botaoAnterior(),
        _botaoProximo(),
      ],
    );
  }

  Widget _botaoAnterior() {
    var numPoke = _pokeApiStore.posicaoAtual! - 1;

    if (_pokeApiStore.posicaoAtual! == 0) {
      numPoke = _pokeApiStore.pokeApi!.pokemon.length - 1;
    }

    return GestureDetector(
      onTap: () {
        _pokeApiStore.setPokemonAtual(index: numPoke);
      },
      child: CachedNetworkImage(
        width: 80,
        height: 80,
        imageUrl: _pokeApiStore.pokeApi!.pokemon[numPoke].getImagem(),
        color: Colors.black.withOpacity(0.5),
      ),
    );
  }

  Widget _botaoProximo() {
    var numPoke = _pokeApiStore.posicaoAtual! + 1;

    if (_pokeApiStore.posicaoAtual! == (_pokeApiStore.pokeApi!.pokemon.length - 1)) {
      numPoke = 0;
    }

    return GestureDetector(
      onTap: () {
        _pokeApiStore.setPokemonAtual(index: numPoke);
      },
      child: CachedNetworkImage(
        width: 80,
        height: 80,
        imageUrl: _pokeApiStore.pokeApi!.pokemon[numPoke].getImagem(),
        color: Colors.black.withOpacity(0.5),
      ),
    );
  }
}
