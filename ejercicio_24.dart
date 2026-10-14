// Ejercicio 24 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_24.dart

import 'dart:io';

// 24) Préstamo a 5 años con interés simple fijo del 5% anual.
// Los intereses se calculan sobre el monto inicial del préstamo.
void main() {
  double monto = leerDouble('Monto del préstamo: ');
  const double tasaAnual = 0.05;
  const int anios = 5;

  double interesAnio = monto * tasaAnual;
  double interesTrimestre = interesAnio / 4;
  double interesMes = interesAnio / 12;
  double totalIntereses = interesAnio * anios;
  double totalPagar = monto + totalIntereses;

  print('Intereses pagados en un año: ${interesAnio.toStringAsFixed(2)}');
  print('Intereses en el tercer trimestre: ${interesTrimestre.toStringAsFixed(2)}');
  print('Intereses en el primer mes: ${interesMes.toStringAsFixed(2)}');
  print('Total de intereses (5 años): ${totalIntereses.toStringAsFixed(2)}');
  print('Total a pagar (capital + intereses): ${totalPagar.toStringAsFixed(2)}');
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
