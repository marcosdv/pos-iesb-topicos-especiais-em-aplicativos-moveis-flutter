import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String? texto;
  final Widget? prefixo;
  final TextInputType? teclado;
  final Function(String)? onChange;

  const CampoTexto({this.texto, this.prefixo, this.teclado, this.onChange, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        keyboardType: teclado,
        onChanged: onChange,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: texto,
          prefixIcon: prefixo
        ),
      ),
    );
  }
}