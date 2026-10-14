// Ejercicio 3 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_03.dart

import 'dart:io';

// 3) Definitiva como promedio simple de 3 notas.
void main() {
  double nota1 = leerDouble('Nota 1: ');
  double nota2 = leerDouble('Nota 2: ');
  double nota3 = leerDouble('Nota 3: ');
  double definitiva = (nota1 + nota2 + nota3) / 3;
  print('Nota definitiva: ${definitiva.toStringAsFixed(2)}');
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
