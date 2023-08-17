import 'dart:io';

void main() async {
  final filename = 'test.txt';

  //Escribimos en el archivo
  var file1 = File(filename).readAsStringSync();
  print('Contenido antes de leerlo:');
  print(file1);

  //Escribimos en el archivo
  //sin borrar contenido actual del archivo
  var file = await File(filename)
      .writeAsString('\nsome content', mode: FileMode.append);
  print('---------------');
  //Archivo modificado
  var file2 = file.readAsStringSync();
  print('Contenido después de leerlo:');
  print(file2);
}
