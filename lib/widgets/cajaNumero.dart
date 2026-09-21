import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';

// Caja de texto de la calculadora.
// Cuando esta seleccionada se le pinta un borde mas grueso para que
// el usuario vea en cual de las dos cajas se va a escribir.
class CajaNumero extends StatelessWidget {
  final String etiqueta;
  final TextEditingController controller;
  final bool seleccionada;
  final VoidCallback? onTap;
  final bool soloLectura;

  const CajaNumero({
    super.key,
    required this.etiqueta,
    required this.controller,
    this.seleccionada = false,
    this.onTap,
    this.soloLectura = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      readOnly: soloLectura,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      // Los numeros se ven en negro
      style: const TextStyle(color: EstilosApp.colorTexto, fontSize: 20),
      decoration: EstilosApp.cajaTexto(etiqueta).copyWith(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(EstilosApp.bordeRedondeado),
          borderSide: BorderSide(
            color: seleccionada ? EstilosApp.colorPrincipal : Colors.grey,
            width: seleccionada ? 2 : 1,
          ),
        ),
      ),
    );
  }
}
