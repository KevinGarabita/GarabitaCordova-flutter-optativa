import 'package:flutter/material.dart';
import 'tareas/tarea1_calculadora.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
      home: const Tarea1Calculadora(),
    );
  }
}
