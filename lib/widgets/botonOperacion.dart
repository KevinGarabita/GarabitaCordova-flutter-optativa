import 'package:flutter/material.dart';

// Boton de una operacion (+, -, *, /)
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
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          simbolo,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
