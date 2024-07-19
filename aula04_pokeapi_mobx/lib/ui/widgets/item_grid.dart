import 'package:aula04_pokeapi_mobx/consts/consts_app.dart';
import 'package:aula04_pokeapi_mobx/models/pokemon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemGrid extends StatelessWidget {
  final Pokemon pokemon;

  const ItemGrid(this.pokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ConstsApp.getColorType(type: pokemon.type[0]),
              ConstsApp.getColorType(type: pokemon.type[0]).withOpacity(0.5),
            ]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset(ConstsApp.pokebolaBranca, width: 200, height: 200),
                ),
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(pokemon.name,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),

                  Text(pokemon.type[0],
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ],
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: CachedNetworkImage(
                  placeholder: (context, url) => Opacity(
                    opacity: 0.15,
                    child: Image.asset(ConstsApp.pokebolaBranca)
                  ),
                  imageUrl: pokemon.getImagem(),
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
