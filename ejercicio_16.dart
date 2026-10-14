// Ejercicio 16 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_16.dart

import 'dart:io';

// 16) El conductor recibe el 19% del total recaudado en el día.
void main() {
  double recaudado = leerDouble('Total recaudado en el día: ');
  print('Le corresponde al conductor: ${(recaudado * 0.19).toStringAsFixed(2)}');
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
