// Ejercicio 1 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_01.dart

import 'dart:io';

// 1) Leer tres números y calcular su suma.
void main() {
  double a = leerDouble('Primer número: ');
  double b = leerDouble('Segundo número: ');
  double c = leerDouble('Tercer número: ');
  print('La suma es: ${a + b + c}');
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
