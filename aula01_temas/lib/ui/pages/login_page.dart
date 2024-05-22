import 'package:aula01_temas/ui/pages/home_page.dart';
import 'package:aula01_temas/ui/widgets/barra_titulo.dart';
import 'package:aula01_temas/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usuarioController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: Column(
          children: [
            const BarraTitulo(),

            Text('Login', style: Theme.of(context).textTheme.displayLarge),

            CampoTexto(
              controller: _usuarioController,
              texto: 'Usuário',
              icone: const Icon(Icons.person),
            ),
            CampoTexto(
              controller: _senhaController,
              texto: 'Senha',
              isSenha: true,
              icone: const Icon(Icons.key),
            ),

            ElevatedButton(
              onPressed: _login,
              child: const Text('Entrar'),
            ),

            const SizedBox(height: 44),

            TextButton(
              onPressed: () { },
              child: const Text('Cadastre-se aqui.'),
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
}