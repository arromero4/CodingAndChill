import 'dart:io';

void main() {
  print("Ingrese un número con decimal:");
  double? number = double.parse(stdin.readLineSync()!);
  print("El número es: $number");
}
