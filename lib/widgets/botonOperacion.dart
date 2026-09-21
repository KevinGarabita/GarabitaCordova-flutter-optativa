import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';

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
      height: EstilosApp.altoBoton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: EstilosApp.estiloBoton(),
        child: Text(simbolo),
      ),
    );
  }
}
