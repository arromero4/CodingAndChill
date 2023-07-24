import 'dart:io';

String fullName() {
  String? fullName;
  print("Enter your name:");
  String name = stdin.readLineSync()!;

  print("Enter your last name:");
  String lastName = stdin.readLineSync()!;

  fullName = 'Hello $name $lastName!';

  return fullName;
}
