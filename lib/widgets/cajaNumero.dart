import 'package:flutter/material.dart';

// Caja de texto donde se escribe un numero
class CajaNumero extends StatelessWidget {
  final TextEditingController controller;

  const CajaNumero({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
