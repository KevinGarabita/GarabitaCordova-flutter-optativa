import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _controller = TextEditingController();
  String _inputValue = '';

  void setStateInput() {
    setState(() {
      _inputValue = _controller.text;
    });
  }

  void setStateClear() {
    setState(() {
      _controller.clear();
      _inputValue = '';
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _controller,
          decoration: const InputDecoration(labelText: 'Enter your name'),
        ),
        ElevatedButton(onPressed: setStateInput, child: const Text("Guardar")),
        ElevatedButton.icon(
          onPressed: setStateClear,
          icon: const Icon(Icons.clear),
          label: const Text("Limpiar"),
        ),
        Text("Valor ingresado: $_inputValue"),
      ],
    );
  }
}
