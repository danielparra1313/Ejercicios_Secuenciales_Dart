// Ejercicio 13 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_13.dart

import 'dart:io';

// 13) Salario = horas trabajadas * valor por hora.
void main() {
  double horas = leerDouble('Horas trabajadas: ');
  double valorHora = leerDouble('Valor por hora: ');
  print('Salario: ${(horas * valorHora).toStringAsFixed(2)}');
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
