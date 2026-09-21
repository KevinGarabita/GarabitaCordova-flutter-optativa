import 'package:flutter/material.dart';
import 'estilos/estilosApp.dart';
import 'tareas/pantallaPrincipal.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tareas Flutter',
      theme: ThemeData(colorSchemeSeed: EstilosApp.colorPrincipal),
      home: const PantallaPrincipal(),
    );
  }
}
