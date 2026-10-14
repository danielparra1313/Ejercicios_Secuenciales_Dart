// Ejercicio 18 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_18.dart

import 'dart:io';

// 18) Matrícula en cuatro cuotas: 40%, 25%, 20% y 15%.
void main() {
  double matricula = leerDouble('Valor de la matrícula: ');
  print('Cuota 1 (40%): ${(matricula * 0.40).toStringAsFixed(2)}');
  print('Cuota 2 (25%): ${(matricula * 0.25).toStringAsFixed(2)}');
  print('Cuota 3 (20%): ${(matricula * 0.20).toStringAsFixed(2)}');
  print('Cuota 4 (15%): ${(matricula * 0.15).toStringAsFixed(2)}');
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
