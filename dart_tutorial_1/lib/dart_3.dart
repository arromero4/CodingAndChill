import 'dart:io';

void main() {
  var contents = File('test.txt').readAsStringSync();
  print('File Contents\n---------------');
  print(contents);
}
