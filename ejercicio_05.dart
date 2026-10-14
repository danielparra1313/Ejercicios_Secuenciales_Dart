// Ejercicio 5 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_05.dart

import 'dart:io';

// 5) Velocidad = distancia / tiempo.
void main() {
  double distancia = leerDouble('Distancia recorrida (km): ');
  double tiempo = leerDouble('Tiempo (horas): ');
  if (tiempo == 0) {
    print('El tiempo no puede ser cero.');
    return;
  }
  print('Velocidad: ${(distancia / tiempo).toStringAsFixed(2)} km/h');
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
