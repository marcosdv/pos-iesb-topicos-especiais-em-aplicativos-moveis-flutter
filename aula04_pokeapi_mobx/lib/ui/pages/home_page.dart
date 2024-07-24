import 'package:aula04_pokeapi_mobx/injections/injection.dart';
import 'package:aula04_pokeapi_mobx/models/pokemon.dart';
import 'package:aula04_pokeapi_mobx/stores/poke_api_store.dart';
import 'package:aula04_pokeapi_mobx/ui/pages/pokemon_page.dart';
import 'package:aula04_pokeapi_mobx/ui/widgets/barra_titulo.dart';
import 'package:aula04_pokeapi_mobx/ui/widgets/item_grid.dart';
import 'package:aula04_pokeapi_mobx/ui/widgets/pokebola_topo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PokeApiStore _pokeApiStore;

  @override
  void initState() {
    super.initState();

    _pokeApiStore = getIt();
    if (_pokeApiStore.pokeApi == null) {
      _pokeApiStore.buscarPokemons();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const PokebolaTopo(),
            Column(
              children: [
                const BarraTitulo(),
                Expanded(
                  child: Observer(
                    builder: (context) {
                      if (_pokeApiStore.pokeApi == null) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return AnimationLimiter(
                        child: GridView.builder(
                          padding: const EdgeInsets.all(14),
                          physics: const BouncingScrollPhysics(),
                          addAutomaticKeepAlives: true,
                          itemCount: _pokeApiStore.pokeApi?.pokemon.length ?? 0,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _numColunas()),
                          itemBuilder: (context, index) {
                            Pokemon? pokemon = _pokeApiStore.getPokemon(index: index);
                            if (pokemon == null) {
                              return Container();
                            }

                            return AnimationConfiguration.staggeredGrid(
                              position: index,
                              columnCount: 1,
                              duration: const Duration(milliseconds: 400),
                              child: ScaleAnimation(
                                child: GestureDetector(
                                  onTap: () {
                                    _pokeApiStore.setPokemonAtual(index: index);
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => PokemonPage()));
                                  },
                                  child: ItemGrid(pokemon),
                                ),
                              ),
                            );
                          }
                        ),
                      );
                    },
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  int _numColunas() {
    final width = MediaQuery.of(context).size.width;
    if (width <= 650) {
      return 2;
    }
    if (width <= 850) {
      return 3;
    }
    if (width <= 1050) {
      return 4;
    }
    return 5;
  }
}