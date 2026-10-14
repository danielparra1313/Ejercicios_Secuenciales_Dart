// Ejercicio 10 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_10.dart

import 'dart:io';

// 10) Descuento del 15% sobre el total de la compra.
void main() {
  double total = leerDouble('Total de la compra: ');
  double descuento = total * 0.15;
  print('Descuento (15%): ${descuento.toStringAsFixed(2)}');
  print('Total a pagar: ${(total - descuento).toStringAsFixed(2)}');
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
