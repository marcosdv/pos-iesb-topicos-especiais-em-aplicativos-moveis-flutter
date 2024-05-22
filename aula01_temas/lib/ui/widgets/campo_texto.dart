import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final String? texto;
  final Widget? icone;
  final Widget? iconeDireito;
  final bool? isSenha;

  const CampoTexto({required this.controller, this.texto, this.icone, this.iconeDireito, this.isSenha, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: TextField(
        controller: controller,
        obscureText: isSenha ?? false,
        decoration: InputDecoration(
          labelText: texto,
          prefixIcon: icone,
          suffixIcon: iconeDireito,
        ),
      ),
    );
  }
}