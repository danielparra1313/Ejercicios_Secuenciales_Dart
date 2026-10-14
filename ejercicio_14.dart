// Ejercicio 14 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_14.dart

import 'dart:io';

// 14) Factura de 4 artículos, con una o varias unidades de cada uno. IVA 19%.
void main() {
  double subtotal = 0;

  String nombre1 = leerTexto('Nombre del artículo 1: ');
  double precio1 = leerDouble('  Precio unitario: ');
  int cant1 = leerInt('  Cantidad: ');
  double total1 = precio1 * cant1;

  String nombre2 = leerTexto('Nombre del artículo 2: ');
  double precio2 = leerDouble('  Precio unitario: ');
  int cant2 = leerInt('  Cantidad: ');
  double total2 = precio2 * cant2;

  String nombre3 = leerTexto('Nombre del artículo 3: ');
  double precio3 = leerDouble('  Precio unitario: ');
  int cant3 = leerInt('  Cantidad: ');
  double total3 = precio3 * cant3;

  String nombre4 = leerTexto('Nombre del artículo 4: ');
  double precio4 = leerDouble('  Precio unitario: ');
  int cant4 = leerInt('  Cantidad: ');
  double total4 = precio4 * cant4;

  subtotal = total1 + total2 + total3 + total4;
  double iva = subtotal * 0.19;
  double total = subtotal + iva;

  print('\n========== FACTURA ==========');
  print('$nombre1 | $cant1 x ${precio1.toStringAsFixed(2)} = ${total1.toStringAsFixed(2)}');
  print('$nombre2 | $cant2 x ${precio2.toStringAsFixed(2)} = ${total2.toStringAsFixed(2)}');
  print('$nombre3 | $cant3 x ${precio3.toStringAsFixed(2)} = ${total3.toStringAsFixed(2)}');
  print('$nombre4 | $cant4 x ${precio4.toStringAsFixed(2)} = ${total4.toStringAsFixed(2)}');
  print('-----------------------------');
  print('Subtotal: ${subtotal.toStringAsFixed(2)}');
  print('IVA (19%): ${iva.toStringAsFixed(2)}');
  print('TOTAL: ${total.toStringAsFixed(2)}');
}

// ---------- Funciones auxiliares de lectura ----------
double leerDouble(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    final texto = (stdin.readLineSync() ?? '').trim().replaceAll(',', '.');
    final valor = double.tryParse(texto);
    if (valor != null) return valor;
    print('  Valor no válido, intenta de nuevo.');
  }
}

int leerInt(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    final valor = int.tryParse((stdin.readLineSync() ?? '').trim());
    if (valor != null) return valor;
    print('  Valor no válido, intenta de nuevo.');
  }
}

String leerTexto(String mensaje) {
  stdout.write(mensaje);
  return (stdin.readLineSync() ?? '').trim();
}
