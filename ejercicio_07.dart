// Ejercicio 7 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_07.dart

import 'dart:io';

// 7) Horas, minutos y segundos a segundos.
void main() {
  int horas = leerInt('Horas: ');
  int minutos = leerInt('Minutos: ');
  int segundos = leerInt('Segundos: ');
  int total = horas * 3600 + minutos * 60 + segundos;
  print('Equivale a $total segundos');
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
