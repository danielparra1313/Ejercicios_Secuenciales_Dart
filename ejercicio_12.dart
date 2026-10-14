// Ejercicio 12 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_12.dart

import 'dart:io';

// 12) Porcentaje de hombres y mujeres en un grupo.
void main() {
  int hombres = leerInt('Cantidad de hombres: ');
  int mujeres = leerInt('Cantidad de mujeres: ');
  int total = hombres + mujeres;
  if (total == 0) {
    print('El grupo no tiene alumnos.');
    return;
  }
  print('Total de alumnos: $total');
  print('Hombres: ${(hombres * 100 / total).toStringAsFixed(2)}%');
  print('Mujeres: ${(mujeres * 100 / total).toStringAsFixed(2)}%');
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
