import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';

// Pantalla 3: muestra un producto con su imagen, su precio y su descripcion.
// Abajo hay un contador que empieza en 0 y sube de uno en uno con el boton +.
class Pantalla3 extends StatefulWidget {
  const Pantalla3({super.key});

  @override
  State<Pantalla3> createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {
  // Cantidad de hamburguesas que se quieren pedir
  int cantidad = 0;

  // Suma uno a la cantidad
  void sumar() {
    setState(() {
      cantidad = cantidad + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EstilosApp.colorFondo,
      appBar: EstilosApp.appBar('Pantalla 3'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(EstilosApp.espacio),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hamburguesa Doble Queso', style: EstilosApp.titulo),
            const SizedBox(height: EstilosApp.espacio),
            // La imagen se baja de internet
            ClipRRect(
              borderRadius: BorderRadius.circular(EstilosApp.bordeRedondeado),
              child: Image.network(
                'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600',
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: EstilosApp.espacio),
            const Text('Precio \$1000', style: EstilosApp.titulo),
            const SizedBox(height: EstilosApp.espacio),
            const Text('Descripcion', style: EstilosApp.texto),
            const SizedBox(height: 5),
            const Text(
              'Hamburguesa de doble carne de res a la parrilla con dos rebanadas '
              'de queso cheddar derretido, lechuga fresca, jitomate, cebolla '
              'morada y nuestra salsa de la casa. Se sirve en pan brioche '
              'tostado con mantequilla y viene acompañada de papas a la francesa.',
              style: EstilosApp.textoChico,
            ),
            const SizedBox(height: EstilosApp.espacio),
            // El contador y el boton para sumar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: EstilosApp.altoBoton,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: EstilosApp.colorPrincipal),
                    borderRadius: BorderRadius.circular(
                      EstilosApp.bordeRedondeado,
                    ),
                  ),
                  child: Text('$cantidad', style: EstilosApp.titulo),
                ),
                SizedBox(
                  width: 80,
                  height: EstilosApp.altoBoton,
                  child: ElevatedButton(
                    onPressed: sumar,
                    style: EstilosApp.estiloBoton(),
                    child: const Text('+'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
