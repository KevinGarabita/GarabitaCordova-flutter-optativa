import 'package:flutter/material.dart';
import '../widgets/cajaNumero.dart';
import '../widgets/botonOperacion.dart';
import '../widgets/botonBorrar.dart';

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

  // Hace la operacion que se pidio con el boton
  void calcular(String operacion) {
    double a = double.tryParse(numero1.text) ?? 0;
    double b = double.tryParse(numero2.text) ?? 0;
    double total = 0;

    if (operacion == '+') {
      total = a + b;
      accion = 'SUMA';
    } else if (operacion == '-') {
      total = a - b;
      accion = 'RESTA';
    } else if (operacion == '*') {
      total = a * b;
      accion = 'MULTIPLICACION';
    } else {
      total = a / b;
      accion = 'DIVISION';
    }

    setState(() {
      resultado = total.toString();
    });
  }

  // Deja la pantalla como al principio
  void borrar() {
    setState(() {
      numero1.clear();
      numero2.clear();
      resultado = '';
      accion = '';
    });
  }

  @override
  void dispose() {
    numero1.dispose();
    numero2.dispose();
    super.dispose();
  }

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
                Expanded(child: CajaNumero(controller: numero1)),
                const SizedBox(width: 20),
                Expanded(child: CajaNumero(controller: numero2)),
              ],
            ),
            const SizedBox(height: 20),
            // Los cuatro botones de las operaciones
            Row(
              children: [
                Expanded(
                  child: BotonOperacion(
                    simbolo: '+',
                    onPressed: () {
                      calcular('+');
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: BotonOperacion(
                    simbolo: '-',
                    onPressed: () {
                      calcular('-');
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: BotonOperacion(
                    simbolo: '*',
                    onPressed: () {
                      calcular('*');
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: BotonOperacion(
                    simbolo: '/',
                    onPressed: () {
                      calcular('/');
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Boton para limpiar todo
            BotonBorrar(onPressed: borrar),
          ],
        ),
      ),
    );
  }
}
