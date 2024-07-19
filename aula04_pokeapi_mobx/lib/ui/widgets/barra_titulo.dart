import 'package:flutter/material.dart';

class BarraTitulo extends StatelessWidget {
  const BarraTitulo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 38, bottom: 38),
                child: Text('Pokedex', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              )
            ],
          )
        ],
      ),
    );
  }
}