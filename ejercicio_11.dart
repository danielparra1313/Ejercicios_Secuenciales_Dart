// Ejercicio 11 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_11.dart

import 'dart:io';

// 11) 55% promedio de 3 parciales, 30% examen final, 15% trabajo final.
void main() {
  double p1 = leerDouble('Parcial 1: ');
  double p2 = leerDouble('Parcial 2: ');
  double p3 = leerDouble('Parcial 3: ');
  double examen = leerDouble('Examen final: ');
  double trabajo = leerDouble('Trabajo final: ');
  double promedio = (p1 + p2 + p3) / 3;
  double finalNota = promedio * 0.55 + examen * 0.30 + trabajo * 0.15;
  print('Promedio de parciales: ${promedio.toStringAsFixed(2)}');
  print('Calificación final: ${finalNota.toStringAsFixed(2)}');
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
