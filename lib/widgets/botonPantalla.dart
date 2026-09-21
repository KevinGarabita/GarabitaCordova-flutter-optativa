import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';

// Boton que se usa en el menu y en la pantalla 2.
// Recibe el texto que va a mostrar y si es de solo lectura (readonly).
// Cuando es de solo lectura el boton se ve apagado y no se puede presionar.
class BotonPantalla extends StatelessWidget {
  final String texto;
  final bool soloLectura;
  final VoidCallback? onPressed;

  const BotonPantalla({
    super.key,
    required this.texto,
    this.soloLectura = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: EstilosApp.altoBoton,
      child: ElevatedButton(
        // Si es solo lectura no se le pasa la funcion y Flutter lo deshabilita
        onPressed: soloLectura ? null : onPressed,
        style: EstilosApp.estiloBoton(),
        child: Text(texto),
      ),
    );
  }
}
