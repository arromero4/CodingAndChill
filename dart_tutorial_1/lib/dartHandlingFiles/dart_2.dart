import 'dart:io';

void main() {
  File('test.txt').readAsString().then((String contents) {
    print('File Contents\n---------------');
    print(contents);
  });
}
