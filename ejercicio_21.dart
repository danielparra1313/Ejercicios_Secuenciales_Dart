// Ejercicio 21 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_21.dart

import 'dart:io';

// 21) Edad a partir del año de nacimiento.
void main() {
  int anioNacimiento = leerInt('Año de nacimiento: ');
  String nombre = leerTexto('Nombre: ');
  String direccion = leerTexto('Dirección: ');
  int edad = DateTime.now().year - anioNacimiento;

  print('\n--- Información del aprendiz ---');
  print('Nombre: $nombre');
  print('Dirección: $direccion');
  print('Año de nacimiento: $anioNacimiento');
  print('Edad: $edad años');
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
