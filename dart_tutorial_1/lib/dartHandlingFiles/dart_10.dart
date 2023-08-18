import 'dart:io';

void main() {
  //Abrir archivo
  File file = File('test.txt');
  //Borrar archivo
  file.delete();
  print('Archivo borrado!');
}
