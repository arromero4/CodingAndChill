class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor
  // los parametros opcionales estan entre corchetes
  Employee(this.name, this.age, [this.subject = "N/A", this.salary = 0]);

  // Metodo
  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
    print("Salary: $salary");
  }
}

void main() {
  Employee employee = Employee("John", 30);
  employee.display();
}
