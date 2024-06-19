import 'package:aula03_di/injections/injection.dart';
import 'package:aula03_di/ui/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() async {
  await configureDependencies();

  runApp(const MaterialApp(
    title: 'Injeção de Dependências',
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}