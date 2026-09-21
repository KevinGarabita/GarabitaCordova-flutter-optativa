import 'package:flutter/material.dart';
import '../estilos/estilosApp.dart';
import '../widgets/cajaNumero.dart';
import '../widgets/botonNumero.dart';
import '../widgets/botonOperacion.dart';
import '../widgets/botonBorrar.dart';

// Tarea 1: Calculadora basica
class Tarea1Calculadora extends StatefulWidget {
  const Tarea1Calculadora({super.key});

  @override
  State<Tarea1Calculadora> createState() => _Tarea1CalculadoraState();
}

class _Tarea1CalculadoraState extends State<Tarea1Calculadora> {
  // Controladores para leer y escribir lo que hay en cada caja
  final TextEditingController numero1 = TextEditingController();
  final TextEditingController numero2 = TextEditingController();
  final TextEditingController resultado = TextEditingController();

  // Dice en cual caja se esta escribiendo: 1 = Numero 1, 2 = Numero 2
  int cajaSeleccionada = 1;

  // Cambia la caja donde se va a escribir
  void seleccionarCaja(int caja) {
    setState(() {
      cajaSeleccionada = caja;
    });
  }

  // Agrega el numero del boton al final de la caja seleccionada
  void escribirNumero(String numero) {
    final TextEditingController caja =
        cajaSeleccionada == 1 ? numero1 : numero2;

    setState(() {
      caja.text = caja.text + numero;
      // Deja el cursor al final del texto
      caja.selection = TextSelection.collapsed(offset: caja.text.length);
    });
  }

  // Hace la operacion que se pidio con el boton
  void calcular(String operacion) {
    double a = double.tryParse(numero1.text) ?? 0;
    double b = double.tryParse(numero2.text) ?? 0;
    double total = 0;

    if (operacion == '+') {
      total = a + b;
    } else if (operacion == '-') {
      total = a - b;
    } else if (operacion == '*') {
      total = a * b;
    } else {
      // No se puede dividir entre cero
      if (b == 0) {
        setState(() {
          resultado.text = 'Error';
        });
        return;
      }
      total = a / b;
    }

    setState(() {
      resultado.text = total.toString();
    });
  }

  // Deja la pantalla como al principio
  void borrar() {
    setState(() {
      numero1.clear();
      numero2.clear();
      resultado.clear();
      cajaSeleccionada = 1;
    });
  }

  @override
  void dispose() {
    numero1.dispose();
    numero2.dispose();
    resultado.dispose();
    super.dispose();
  }

  // Arma una fila con tres botones de numeros
  Widget filaDeNumeros(String primero, String segundo, String tercero) {
    return Row(
      children: [
        Expanded(
          child: BotonNumero(
            numero: primero,
            onPressed: () => escribirNumero(primero),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: BotonNumero(
            numero: segundo,
            onPressed: () => escribirNumero(segundo),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: BotonNumero(
            numero: tercero,
            onPressed: () => escribirNumero(tercero),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EstilosApp.colorFondo,
      appBar: EstilosApp.appBar('Calculadora'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Las dos cajas donde se escriben los numeros
            Row(
              children: [
                Expanded(
                  child: CajaNumero(
                    etiqueta: 'Numero 1',
                    controller: numero1,
                    seleccionada: cajaSeleccionada == 1,
                    onTap: () => seleccionarCaja(1),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CajaNumero(
                    etiqueta: 'Numero 2',
                    controller: numero2,
                    seleccionada: cajaSeleccionada == 2,
                    onTap: () => seleccionarCaja(2),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Caja donde se muestra el resultado (no se puede escribir)
            CajaNumero(
              etiqueta: 'Resultado',
              controller: resultado,
              soloLectura: true,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                // Lado izquierdo: el teclado de numeros
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      filaDeNumeros('1', '2', '3'),
                      const SizedBox(height: 10),
                      filaDeNumeros('4', '5', '6'),
                      const SizedBox(height: 10),
                      filaDeNumeros('7', '8', '9'),
                      const SizedBox(height: 10),
                      // El cero ocupa todo el ancho del teclado
                      SizedBox(
                        width: double.infinity,
                        child: BotonNumero(
                          numero: '0',
                          onPressed: () => escribirNumero('0'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                // Lado derecho: los botones de las operaciones
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      BotonOperacion(
                        simbolo: '+',
                        onPressed: () => calcular('+'),
                      ),
                      const SizedBox(height: 10),
                      BotonOperacion(
                        simbolo: '-',
                        onPressed: () => calcular('-'),
                      ),
                      const SizedBox(height: 10),
                      BotonOperacion(
                        simbolo: '*',
                        onPressed: () => calcular('*'),
                      ),
                      const SizedBox(height: 10),
                      BotonOperacion(
                        simbolo: '/',
                        onPressed: () => calcular('/'),
                      ),
                    ],
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
