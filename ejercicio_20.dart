// Ejercicio 20 - Algoritmos secuenciales en Dart
// Ejecutar con: dart run ejercicio_20.dart

import 'dart:io';

// 20) Subtotal, IVA (19% del subtotal) y precio neto.
// Se asume que el descuento se ingresa como porcentaje.
void main() {
  double precio = leerDouble('Precio de compra unitario: ');
  int cantidad = leerInt('Cantidad: ');
  double descuentoPct = leerDouble('Descuento (%): ');

  double bruto = precio * cantidad;
  double descuento = bruto * descuentoPct / 100;
  double subtotal = bruto - descuento;
  double iva = subtotal * 0.19;
  double neto = subtotal + iva;

  print('Valor bruto: ${bruto.toStringAsFixed(2)}');
  print('Descuento: ${descuento.toStringAsFixed(2)}');
  print('Subtotal: ${subtotal.toStringAsFixed(2)}');
  print('IVA (19%): ${iva.toStringAsFixed(2)}');
  print('Precio neto: ${neto.toStringAsFixed(2)}');
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
