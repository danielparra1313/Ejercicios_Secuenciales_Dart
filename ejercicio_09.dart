// Ejercicio 9 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_09.dart

import 'dart:io';

// 9) Sueldo base + 10% de comisión sobre tres ventas.
void main() {
  double sueldoBase = leerDouble('Sueldo base: ');
  double v1 = leerDouble('Valor de la venta 1: ');
  double v2 = leerDouble('Valor de la venta 2: ');
  double v3 = leerDouble('Valor de la venta 3: ');
  double comisiones = (v1 + v2 + v3) * 0.10;
  double total = sueldoBase + comisiones;
  print('Comisiones: ${comisiones.toStringAsFixed(2)}');
  print('Total a recibir en el mes: ${total.toStringAsFixed(2)}');
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
