// Ejercicio 2 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_02.dart

import 'dart:io';

// 2) Leer dos números y calcular suma, resta, multiplicación y división.
void main() {
  double a = leerDouble('Primer número: ');
  double b = leerDouble('Segundo número: ');
  print('Suma: ${a + b}');
  print('Resta: ${a - b}');
  print('Multiplicación: ${a * b}');
  if (b == 0) {
    print('División: no se puede dividir por cero');
  } else {
    print('División: ${a / b}');
  }
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
