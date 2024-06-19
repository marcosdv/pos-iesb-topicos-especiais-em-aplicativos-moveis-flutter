import 'package:aula03_di/injections/injection.dart';
import 'package:aula03_di/managers/session_manager.dart';
import 'package:aula03_di/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              SessionManager sessionManager = getIt();

              print('Login: ${sessionManager.hashCode}');
              if (sessionManager.usuario != null) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                );
              }
            },
            child: const Text('Entrar'),
          ),
        ),
      ),
    );
  }
}