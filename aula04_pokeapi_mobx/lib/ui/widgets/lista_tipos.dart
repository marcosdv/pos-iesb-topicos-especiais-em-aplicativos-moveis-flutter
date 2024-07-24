import 'dart:ui';

import 'package:flutter/material.dart';

class ListaTipos extends StatelessWidget {
  final List<String> types;
  final bool isColuna;

  const ListaTipos(this.types, {this.isColuna = true, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> lista = [];

    for (var tipo in types) {
      lista.add(_criarItem(tipo));
    }

    return isColuna ? Column(children: lista) : Row(children: lista);
  }

  Widget _criarItem(String tipo) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white.withOpacity(0.35)
        ),
        child: Text(tipo, style: const TextStyle(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold
        )),
      ),
    );
  }
}