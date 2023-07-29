import 'dart:io';

void trimStrings() {
  print("Enter a String with whitespaces:");
  String n1 = stdin.readLineSync()!;

  print("Result of trim '$n1' is '${n1.trim()}'");
}
