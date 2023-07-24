import 'dart:io';

void swapingNumbers() {
  print("Enter a number 1:");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter a number 2:");
  int n2 = int.parse(stdin.readLineSync()!);

  print('number 1: $n1');
  print('number 2: $n2');
  print('swaping numbers');
  int new1 = n2;
  int new2 = n1;

  print('number 1: $new1');
  print('number 2: $new2');
}
