import 'dart:io';

void main() {
  //Abrir archivo
  File file = File('test.txt');
  //Obtener ruta del archivo
  print('Ruta del archivo: ${file.path}');
  //Obtener ruta absoluta del archivo
  print('Ruta absoluta del archivo: ${file.absolute.path}');
  //Obtener tamaño archivo
  print('Tamaño del archivo: ${file.lengthSync()} bytes');
  //Obtener la ultima que se modificó el archivo
  print('Última modificación: ${file.lastModifiedSync()}');
}
