import 'dart:io';

double divisionQuotient() {
  print("Enter a number 1 to get quotient:");
  double n1 = double.parse(stdin.readLineSync()!);

  print("Enter a number 2 to get quotient:");
  double n2 = double.parse(stdin.readLineSync()!);

  double result1 = n1 / n2;
  return result1;
}

double divisionRemainder() {
  print("Enter a number 1 to get remainder:");
  double n1 = double.parse(stdin.readLineSync()!);

  print("Enter a number 2 to get remainder:");
  double n2 = double.parse(stdin.readLineSync()!);

  double result2 = n1 % n2;
  return result2;
}
