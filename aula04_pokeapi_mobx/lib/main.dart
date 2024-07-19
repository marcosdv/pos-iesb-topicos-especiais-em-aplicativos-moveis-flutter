import 'package:aula04_pokeapi_mobx/injections/injection.dart';
import 'package:aula04_pokeapi_mobx/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  configurarDependencias();

  runApp(MaterialApp(
    title: 'Pokedex',
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Google'),
  ));
}