import 'package:flutter/material.dart';

// Tarea 1: Calculadora basica
class Tarea1Calculadora extends StatefulWidget {
  const Tarea1Calculadora({super.key});

  @override
  State<Tarea1Calculadora> createState() => _Tarea1CalculadoraState();
}

class _Tarea1CalculadoraState extends State<Tarea1Calculadora> {
  // Controladores para leer lo que el usuario escribe en las cajas
  final TextEditingController numero1 = TextEditingController();
  final TextEditingController numero2 = TextEditingController();

  // Datos que se muestran en pantalla
  String resultado = '';
  String accion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MI PRIMERA APP'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'CALCULADORA',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('RESULTADO: $resultado'),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('ACCION: $accion'),
            ),
            const SizedBox(height: 20),
            // Las dos cajas donde se escriben los numeros
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: numero1,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: numero2,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Los cuatro botones de las operaciones
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('+'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('-'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('*'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('/'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Boton para limpiar todo
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('BORRAR'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
