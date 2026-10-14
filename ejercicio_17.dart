// Ejercicio 17 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_17.dart

import 'dart:io';

// 17) Colilla de pago.
void main() {
  double salario = leerDouble('Salario del empleado: ');
  double ahorro = leerDouble('Valor de ahorro mensual programado: ');
  double eps = salario * 0.125;
  double pension = salario * 0.16;
  double total = salario - ahorro - eps - pension;

  print('\n====== COLILLA DE PAGO ======');
  print('Salario: ${salario.toStringAsFixed(2)}');
  print('Ahorro mensual: ${ahorro.toStringAsFixed(2)}');
  print('Aporte salud EPS (12.5%): ${eps.toStringAsFixed(2)}');
  print('Fondo pensiones (16%): ${pension.toStringAsFixed(2)}');
  print('-----------------------------');
  print('TOTAL A RECIBIR: ${total.toStringAsFixed(2)}');
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
