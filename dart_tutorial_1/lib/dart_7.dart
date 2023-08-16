// dart program to read from file
import 'dart:io';

void main() {
  //Abrir archivo
  File file = File('C:\\Users\\test.txt');
  //Leer archivo
  String contents = file.readAsStringSync();
  //mostramos
  print(contents);
}
