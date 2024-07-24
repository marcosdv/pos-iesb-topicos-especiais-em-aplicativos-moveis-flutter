import 'package:aula04_pokeapi_mobx/injections/injection.dart';
import 'package:aula04_pokeapi_mobx/stores/poke_api_store.dart';
import 'package:aula04_pokeapi_mobx/ui/widgets/botoes_navegacao.dart';
import 'package:aula04_pokeapi_mobx/ui/widgets/lista_tipos.dart';
import 'package:aula04_pokeapi_mobx/ui/widgets/pokebola_topo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PokemonPage extends StatelessWidget {
  final PokeApiStore _pokeApiStore = getIt();

  PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: Stack(
          children: [
            Observer(
              builder: (context) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 700),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        _pokeApiStore.corPokemon,
                        _pokeApiStore.corPokemon.withOpacity(0.3),
                      ]
                    ),
                  ),
                  child: Stack(
                    children: [
                      const PokebolaTopo(corPreta: false),
                      AppBar(
                        backgroundColor: Colors.transparent,
                        leading: IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () { Navigator.pop(context); },
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.10,
                        left: 20,
                        child: Text(
                          _pokeApiStore.pokemonAtual?.name ?? '',
                          style: const TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.15,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('#${_pokeApiStore.pokemonAtual?.num}',
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              ListaTipos(_pokeApiStore.pokemonAtual?.type ?? [], isColuna: false),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.30,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          child: BotoesNavegacao(),
                        )
                      ),
                    ],
                  ),
                );
              },
            ),

            Stack(
              alignment: Alignment.center,
              children: [
                IgnorePointer(
                  child: Observer(
                    builder: (context) {
                      return Hero(
                        tag: 'Tag_${_pokeApiStore.pokemonAtual?.num}',
                        child: CachedNetworkImage(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          imageUrl: _pokeApiStore.pokemonAtual?.getImagem() ?? '',
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}