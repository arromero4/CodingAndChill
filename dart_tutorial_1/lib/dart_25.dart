void main() {
  String text = "I love Dart";

// Muestra love Dart:  love Dart
//desde indice 2 hasta el finalizar
  print("Muestra love Dart: ${text.substring(2)}");

// Muestra love: love
//desde indice 2 hasta el indice 6
  print("Muestra Dart: ${text.substring(2, 6)}");
}
