import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';
import '../widgets/botonPantalla.dart';

// Pantalla 2: solo tiene cinco botones hechos con el widget BotonPantalla.
class Pantalla2 extends StatefulWidget {
  const Pantalla2({super.key});

  @override
  State<Pantalla2> createState() => _Pantalla2State();
}

class _Pantalla2State extends State<Pantalla2> {
  // Mensaje que dice cual boton se presiono
  String mensaje = 'Presiona un boton';

  void presionarBoton(String nombre) {
    setState(() {
      mensaje = 'Presionaste el $nombre';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EstilosApp.colorFondo,
      appBar: EstilosApp.appBar('Pantalla 2'),
      body: Padding(
        padding: const EdgeInsets.all(EstilosApp.espacio),
        child: Column(
          children: [
            BotonPantalla(
              texto: 'Boton 1',
              onPressed: () => presionarBoton('Boton 1'),
            ),
            const SizedBox(height: EstilosApp.espacio),
            BotonPantalla(
              texto: 'Boton 2',
              onPressed: () => presionarBoton('Boton 2'),
            ),
            const SizedBox(height: EstilosApp.espacio),
            BotonPantalla(
              texto: 'Boton 3',
              onPressed: () => presionarBoton('Boton 3'),
            ),
            const SizedBox(height: EstilosApp.espacio),
            BotonPantalla(
              texto: 'Boton 4',
              onPressed: () => presionarBoton('Boton 4'),
            ),
            const SizedBox(height: EstilosApp.espacio),
            // Este boton es de solo lectura, por eso no se puede presionar
            const BotonPantalla(
              texto: 'Boton 5',
              soloLectura: true,
            ),
            const SizedBox(height: EstilosApp.espacio),
            Text(mensaje, style: EstilosApp.texto),
          ],
        ),
      ),
    );
  }
}
