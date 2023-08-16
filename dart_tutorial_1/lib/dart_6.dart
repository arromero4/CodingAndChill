// dart program to read from file
import 'dart:io';

void main() {
  //Abrir archivo
  File file = File('test.txt');
  //Leer primero 10 caracteres
  String contents = file.readAsStringSync().substring(0, 10);
  //mostramos
  print(contents);
  //Welcome to
}
