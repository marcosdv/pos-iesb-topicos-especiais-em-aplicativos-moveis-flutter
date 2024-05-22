import 'dart:ui';

import 'package:flutter/material.dart';

class BarraTitulo extends StatelessWidget {
  const BarraTitulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(bottom: 22),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).primaryColorDark,
                Theme.of(context).primaryColorLight,
                Theme.of(context).primaryColorDark,
              ]
            ),
            boxShadow: const [
              BoxShadow(color: Colors.black, blurRadius: 5),
            ],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(80)
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_balance_wallet, size: 80, color: Colors.white),
              Text('Meu App Login', style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ),
      ],
    );
  }
}