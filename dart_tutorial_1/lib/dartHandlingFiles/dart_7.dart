import 'dart:io';

void main() {
  //Abrir archivo
  File file = File(
      'C:\\Users\\ARROMERO\\Desktop\\CodingAndChill\\dart_tutorial_1\\lib\\test.txt');
  //Leer archivo
  String contents = file.readAsStringSync();
  //mostramos
  print(contents);
}
