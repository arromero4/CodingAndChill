import 'dart:io';

void stringToIntFn() {
  print("Enter a number:");
  String n1 = stdin.readLineSync()!;
  int n2 = int.parse(n1);
  print('run time: ${n1.runtimeType}');
  print("String is'$n1' to Int '$n2'");
  print('run time: ${n2.runtimeType}');
}
