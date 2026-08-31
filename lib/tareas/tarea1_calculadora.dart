import 'package:flutter/material.dart';

// Tarea 1: Calculadora basica
class Tarea1Calculadora extends StatefulWidget {
  const Tarea1Calculadora({super.key});

  @override
  State<Tarea1Calculadora> createState() => _Tarea1CalculadoraState();
}

class _Tarea1CalculadoraState extends State<Tarea1Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MI PRIMERA APP'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('CALCULADORA'),
      ),
    );
  }
}
