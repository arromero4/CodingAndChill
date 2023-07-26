import 'dart:io';

void main() {
  print("Ingrese un número:");
  int? number = int.parse(stdin.readLineSync()!);
  print("El número es: $number");
}
