import 'package:aula02_mobx/stores/combustivel.dart';
import 'package:aula02_mobx/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _combustivel = Combustivel();

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Etanol x Gasolina'),
          backgroundColor: Colors.blue.shade200,
        ),
        floatingActionButton: Observer(builder: (context) =>
          FloatingActionButton(
            onPressed: _combustivel.calcular,
            child: const Icon(Icons.calculate_outlined),
          )
        ),
        body: Column(
          children: [
            CampoTexto(
              texto: 'Etanol',
              teclado: TextInputType.number,
              prefixo: const Icon(Icons.attach_money),
              onChange: _combustivel.setEtanol,
            ),
            CampoTexto(
              texto: 'Gasolina',
              teclado: TextInputType.number,
              prefixo: const Icon(Icons.attach_money),
              onChange: _combustivel.setGasolina,
            ),

            const SizedBox(height: 44),

            Observer(builder: (context) =>
              ElevatedButton(
                onPressed: _combustivel.calcular,
                child: const Text('Calcular')
              ),
            ),

            const SizedBox(height: 44),

            Observer(builder: (context) =>
              Column(
                children: [
                  Text(_combustivel.melhorOpcao),
                  _criarImagem(_combustivel.melhorEtanol, 'etanol.jpg'),
                  _criarImagem(_combustivel.melhorGasolina, 'gasolina.jpg')
                ],
              )
            ),
          ],
        ),
      ),
    );
  }

  Widget _criarImagem(bool exibir, String imagem) {
    return exibir ? Image.asset('images/$imagem', height: 300, width: 350) : const SizedBox();
  }
}