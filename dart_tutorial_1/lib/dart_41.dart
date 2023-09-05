class Student {
  int id;
  String name;
  static String schoolName = "ABC School";
  Student(this.id, this.name);
  void display() {
    print("Id: $id");
    print("Name: $name");
    print("School Name: ${Student.schoolName}");
  }
}

void main() {
  Student s1 = Student(1, "John");
  s1.display();
  Student s2 = Student(2, "Smith");
  s2.display();
}
