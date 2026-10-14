// Ejercicio 8 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_08.dart

import 'dart:io';

// 8) Ganancia de una inversión al 2% mensual.
void main() {
  double capital = leerDouble('Capital a invertir: ');
  double ganancia = capital * 0.02;
  print('Ganancia después de un mes: ${ganancia.toStringAsFixed(2)}');
  print('Capital final: ${(capital + ganancia).toStringAsFixed(2)}');
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
