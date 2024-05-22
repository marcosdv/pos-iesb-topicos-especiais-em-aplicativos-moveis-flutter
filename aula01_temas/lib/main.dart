import 'package:aula01_temas/ui/pages/login_page.dart';
import 'package:aula01_temas/ui/themes/meu_tema.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Meu App',
    home: const LoginPage(),
    theme: meuTema(),
    debugShowCheckedModeBanner: false,
  ));
}