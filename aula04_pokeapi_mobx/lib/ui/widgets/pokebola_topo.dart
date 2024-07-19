import 'package:aula04_pokeapi_mobx/consts/consts_app.dart';
import 'package:flutter/material.dart';

class PokebolaTopo extends StatelessWidget {
  final bool corPreta;

  const PokebolaTopo({this.corPreta = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top - 240 / 3.4,
      left: MediaQuery.of(context).size.width - 240 / 1.4,
      child: Opacity(
        opacity: 0.15,
        child: Image.asset(
          corPreta ? ConstsApp.pokebolaPreta : ConstsApp.pokebolaBranca,
          width: 240,
          height: 240,
        ),
      ),
    );
  }
}