import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';

// Boton de un numero del teclado (del 0 al 9)
class BotonNumero extends StatelessWidget {
  final String numero;
  final VoidCallback onPressed;

  const BotonNumero({
    super.key,
    required this.numero,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: EstilosApp.altoBoton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: EstilosApp.estiloBoton(),
        child: Text(numero),
      ),
    );
  }
}
