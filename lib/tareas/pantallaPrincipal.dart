import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';
import '../widgets/botonPantalla.dart';
import 'tarea1_calculadora.dart';
import 'pantalla2.dart';
import 'pantalla3.dart';

// Menu principal de la app. Desde aqui se entra a las otras pantallas.
class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  // Abre la pantalla que se le mande
  void abrirPantalla(BuildContext context, Widget pantalla) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pantalla),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EstilosApp.colorFondo,
      appBar: EstilosApp.appBar('App bar'),
      body: Padding(
        padding: const EdgeInsets.all(EstilosApp.espacio),
        child: Column(
          children: [
            BotonPantalla(
              texto: 'Calculadora',
              onPressed: () => abrirPantalla(context, const Tarea1Calculadora()),
            ),
            const SizedBox(height: EstilosApp.espacio),
            BotonPantalla(
              texto: 'Pantalla 2',
              onPressed: () => abrirPantalla(context, const Pantalla2()),
            ),
            const SizedBox(height: EstilosApp.espacio),
            BotonPantalla(
              texto: 'Pantalla 3',
              onPressed: () => abrirPantalla(context, const Pantalla3()),
            ),
          ],
        ),
      ),
    );
  }
}
