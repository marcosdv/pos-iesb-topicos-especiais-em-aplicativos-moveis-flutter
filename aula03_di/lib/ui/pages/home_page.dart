import 'package:aula03_di/injections/injection.dart';
import 'package:aula03_di/managers/session_manager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SessionManager sessionManager = getIt();

  @override
  Widget build(BuildContext context) {
    print('Home: ${sessionManager.hashCode}');
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Text(sessionManager.usuario?.nome ?? 'Usuário Não Logado'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
    );
  }
}