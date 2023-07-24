import 'dart:io';

void restaurant() {
  print("Enter a total bill amount:");
  double n1 = double.parse(stdin.readLineSync()!);

  print("Enter total of people:");
  double n2 = double.parse(stdin.readLineSync()!);

  double bill = n1 / n2;

  print('Total bill for each person: $bill');
}
