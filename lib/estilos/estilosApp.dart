import 'package:flutter/material.dart';

// Clase que guarda el diseño de toda la app en un solo lugar.
// Aqui estan los colores, los tamaños, los estilos de texto, el appbar,
// los botones y las cajas de texto para no repetirlos en cada pantalla.
class EstilosApp {
  // COLORES
  static const Color colorPrincipal = Colors.deepPurple;
  static const Color colorFondo = Color(0xFFF3F1F8);
  static const Color colorTexto = Colors.black;
  static const Color colorTextoBoton = Colors.white;

  // TAMAÑOS
  static const double tamanoTitulo = 22;
  static const double tamanoTexto = 16;
  static const double tamanoTextoChico = 13;
  static const double altoBoton = 50;
  static const double espacio = 15;
  static const double bordeRedondeado = 10;

  // TEXTO
  static const TextStyle titulo = TextStyle(
    fontSize: tamanoTitulo,
    fontWeight: FontWeight.bold,
    color: colorTexto,
  );

  static const TextStyle texto = TextStyle(
    fontSize: tamanoTexto,
    color: colorTexto,
  );

  static const TextStyle textoChico = TextStyle(
    fontSize: tamanoTextoChico,
    color: colorTexto,
  );

  // APPBAR: se usa igual en todas las pantallas
  static AppBar appBar(String titulo) {
    return AppBar(
      title: Text(titulo),
      centerTitle: true,
      backgroundColor: colorPrincipal,
      foregroundColor: colorTextoBoton,
    );
  }

  // BOTONES
  static ButtonStyle estiloBoton() {
    return ElevatedButton.styleFrom(
      backgroundColor: colorPrincipal,
      foregroundColor: colorTextoBoton,
      textStyle: const TextStyle(fontSize: tamanoTexto),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(bordeRedondeado),
      ),
    );
  }

  // CAJAS DE TEXTO
  static InputDecoration cajaTexto(String etiqueta) {
    return InputDecoration(
      labelText: etiqueta,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(bordeRedondeado),
      ),
    );
  }
}
