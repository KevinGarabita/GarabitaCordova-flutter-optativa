import 'package:flutter/material.dart';

// Boton ancho que limpia la calculadora
class BotonBorrar extends StatelessWidget {
  final VoidCallback onPressed;

  const BotonBorrar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('BORRAR'),
      ),
    );
  }
}
