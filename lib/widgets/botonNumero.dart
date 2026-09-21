import 'package:flutter/material.dart';

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
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          numero,
          // Los numeros se ven en negro
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
