import 'dart:io';

void main() async {
  //Abrir archivo
  File file = File('test.txt');
  //Revisar si el archivo existe
  if (file.existsSync()) {
    // delete file
    file.delete();
    print('File deleted.');
  } else {
    print('File does not exist.');
  }
}
