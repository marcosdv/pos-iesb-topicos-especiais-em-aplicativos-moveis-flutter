import 'package:aula01_temas/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _buscaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(title: Text('Meu App')),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CampoTexto(
                    controller: _buscaController,
                    texto: 'Buscar',
                    iconeDireito: IconButton(onPressed: () { }, icon: const Icon(Icons.search)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}