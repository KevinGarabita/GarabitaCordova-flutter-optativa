import 'package:flutter/material.dart';

// Boton cuadrado de una operacion (+, -, *, /)
class BotonOperacion extends StatelessWidget {
  final String simbolo;
  final VoidCallback onPressed;

  const BotonOperacion({
    super.key,
    required this.simbolo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(simbolo),
    );
  }
}
