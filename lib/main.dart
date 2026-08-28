import 'package:flutter/material.dart';
import 'widgets/customInput.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('MI PRIMERA APP'), centerTitle: true, backgroundColor: Colors.blue),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomInput(text: 'Nombre'),
              const SizedBox(height: 12),
              CustomInput(text: 'Solo lectura', read: true),
            ],
          ),
        ),
      ),
    );
  }
}
