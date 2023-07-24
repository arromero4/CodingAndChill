import 'dart:io';
import 'dart:math';

num squareNumber() {
  print("Enter a floating number to get its square:");
  int n = int.parse(stdin.readLineSync()!);

  num result = pow(n, 2);
  return result;
}
