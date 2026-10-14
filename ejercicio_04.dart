// Ejercicio 4 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_04.dart

import 'dart:io';

// 4) Definitiva ponderada: 20%, 30% y 50%.
void main() {
  double nota1 = leerDouble('Nota 1 (20%): ');
  double nota2 = leerDouble('Nota 2 (30%): ');
  double nota3 = leerDouble('Nota 3 (50%): ');
  double definitiva = nota1 * 0.20 + nota2 * 0.30 + nota3 * 0.50;
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
