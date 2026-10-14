// Ejercicio 19 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_19.dart

import 'dart:io';

// 19) Datos del estudiante y promedio de 5 notas.
void main() {
  String nombre = leerTexto('Nombre: ');
  String programa = leerTexto('Programa de formación: ');
  String ficha = leerTexto('Ficha: ');
  double nota1 = leerDouble('Nota 1: ');
  double nota2 = leerDouble('Nota 2: ');
  double nota3 = leerDouble('Nota 3: ');
  double nota4 = leerDouble('Nota 4: ');
  double nota5 = leerDouble('Nota 5: ');
  double promedio = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;

  print('\nNombre: $nombre');
  print('Programa de formación: $programa');
  print('Ficha: $ficha');
  print('Promedio final: ${promedio.toStringAsFixed(2)}');
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
