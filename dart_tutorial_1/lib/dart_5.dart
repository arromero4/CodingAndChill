import 'dart:io';

void main() {
  //Abrir archivo
  File file = File('test.csv');
  //Leer archivo
  String contents = file.readAsStringSync();
  //separar el archivo con una nueva linea
  List<String> lines = contents.split('\n');
  //mostramos linea por linea
  print('---------------------');
  for (var line in lines) {
    print(line);
  }
}
