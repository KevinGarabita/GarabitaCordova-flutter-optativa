import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';

// Boton ancho que limpia la calculadora
class BotonBorrar extends StatelessWidget {
  final VoidCallback onPressed;

  const BotonBorrar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: EstilosApp.altoBoton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: EstilosApp.estiloBoton(),
        child: const Text('Borrar'),
      ),
    );
  }
}
