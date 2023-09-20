class Employee {
  // Constructor Nombrado
  Employee.manager() {
    print("Employee named constructor");
  }
}

class Manager extends Employee {
  // Constructor Nombrado
  Manager.manager() : super.manager() {
    print("Manager named constructor");
  }
}

void main() {
  Manager manager = Manager.manager();
}
