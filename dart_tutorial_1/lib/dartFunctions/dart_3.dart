class Person {
  final String name;
  final String lastname;
  Person(this.name, this.lastname);
}

// Old way: before Dart 2.17
class Employee extends Person {
  final int salary;
  final bool benefit;
  Employee(super.name, super.lastname, this.salary, this.benefit);
}
