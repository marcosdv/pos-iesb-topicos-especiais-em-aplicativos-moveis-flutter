import 'package:flutter/material.dart';

class ConstsApp {
  static const String pokebolaBranca = 'assets/images/pokeball.png';
  static const String pokebolaPreta = 'assets/images/pokeball_dark.png';

  static Color getColorType({required String type}) {
    switch (type) {
      case 'Normal': return Colors.brown.shade400;
      case 'Grass': return Colors.green;
      case 'Water': return Colors.blue;
      case 'Fire': return Colors.red;
      case 'Electric': return Colors.amber;
      case 'Ice': return Colors.cyanAccent.shade400;
      case 'Poison': return Colors.purple;
      case 'Fighting': return Colors.orange;
      case 'Ground': return Colors.orange.shade300;
      case 'Flying': return Colors.indigo.shade200;
      case 'Bug': return Colors.lightGreen.shade500;
      case 'Psychic': return Colors.pink;
      case 'Rock': return Colors.grey;
      case 'Dark': return Colors.brown;
      case 'Ghost': return Colors.indigo.shade400;
      case 'Dragon': return Colors.indigo.shade800;
      case 'Fairy': return Colors.pinkAccent.shade100;
      case 'Steel': return Colors.blueGrey;
      default: return Colors.grey;
    }
  }
}