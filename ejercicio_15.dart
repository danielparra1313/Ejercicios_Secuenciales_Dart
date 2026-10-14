// Ejercicio 15 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_15.dart

import 'dart:io';

// 15) Registro de venta: IVA, total a pagar y cambio (solo efectivo).
void main() {
  double monto = leerDouble('Monto de la venta: ');
  double iva = monto * 0.19;
  double total = monto + iva;
  print('IVA (19%): ${iva.toStringAsFixed(2)}');
  print('Total a pagar: ${total.toStringAsFixed(2)}');

  double pago = leerDouble('Cantidad con la que paga el cliente: ');
  if (pago < total) {
    print('El pago es insuficiente. Faltan ${(total - pago).toStringAsFixed(2)}');
  } else {
    print('Cambio: ${(pago - total).toStringAsFixed(2)}');
  }
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
