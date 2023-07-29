import 'dart:io';

double simpleInterest() {
  print("Enter a floating number p:");
  double p = double.parse(stdin.readLineSync()!);
  print("Enter a floating number t:");
  double t = double.parse(stdin.readLineSync()!);
  print("Enter a floating number r:");
  double r = double.parse(stdin.readLineSync()!);

  double formula = (p * t * r) / 100;
  return formula;
}
