//Programa Dart para leer archivos
import 'dart:io';

void main() {
  //Crear un objecto de la clase File
  File file = File("test.txt");
  //leer archivo
  String contents = file.readAsStringSync();
  //mostrar archivo
  print(contents);
}
