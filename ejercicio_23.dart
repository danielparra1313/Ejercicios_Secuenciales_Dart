// Ejercicio 23 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_23.dart

import 'dart:io';

// 23) 5 horas para subir 7 metros. Para otra altura: regla de tres.
void main() {
  const double horasBase = 5;
  const double metrosBase = 7;
  double metros = leerDouble('Metros que el escalador desea subir: ');
  double horas = metros * horasBase / metrosBase;
  int h = horas.floor();
  int m = ((horas - h) * 60).round();
  print('Tiempo estimado: ${horas.toStringAsFixed(2)} horas ($h h $m min)');
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
