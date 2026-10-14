// Ejercicio 22 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_22.dart

import 'dart:io';

// 22) Baldes de agua (regla de tres: el caudal es constante).
// Parte A: baldes de 5, 3 y 1 litro; el de 1 litro tarda 1.5 horas.
// Parte B: tamaños desconocidos, se piden como datos.
void main() {
  print('--- Parte A: baldes de 5, 3 y 1 litro ---');
  double horasPorLitro = 1.5; // el balde de 1 litro tarda 1.5 h
  print('Balde de 1 litro: ${1 * horasPorLitro} horas');
  print('Balde de 3 litros: ${3 * horasPorLitro} horas');
  print('Balde de 5 litros: ${5 * horasPorLitro} horas');

  print('\n--- Parte B: tamaños desconocidos ---');
  double capRef = leerDouble('Capacidad del balde de referencia (litros): ');
  double tiempoRef = leerDouble('Tiempo que tarda en llenarse (horas): ');
  if (capRef == 0) {
    print('La capacidad de referencia no puede ser cero.');
    return;
  }
  double cap1 = leerDouble('Capacidad del balde 1 (litros): ');
  double cap2 = leerDouble('Capacidad del balde 2 (litros): ');
  double cap3 = leerDouble('Capacidad del balde 3 (litros): ');

  print('Balde 1: ${(cap1 * tiempoRef / capRef).toStringAsFixed(2)} horas');
  print('Balde 2: ${(cap2 * tiempoRef / capRef).toStringAsFixed(2)} horas');
  print('Balde 3: ${(cap3 * tiempoRef / capRef).toStringAsFixed(2)} horas');
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
