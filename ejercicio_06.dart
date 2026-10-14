// Ejercicio 6 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_06.dart

import 'dart:io';

// 6) Descuento 10% antes del IVA (19%).
void main() {
  double compra = leerDouble('Valor de la compra: ');
  double descuento = compra * 0.10;
  double subtotal = compra - descuento;
  double iva = subtotal * 0.19;
  double total = subtotal + iva;
  print('Descuento (10%): ${descuento.toStringAsFixed(2)}');
  print('Subtotal con descuento: ${subtotal.toStringAsFixed(2)}');
  print('IVA (19%): ${iva.toStringAsFixed(2)}');
  print('Total de la factura: ${total.toStringAsFixed(2)}');
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
