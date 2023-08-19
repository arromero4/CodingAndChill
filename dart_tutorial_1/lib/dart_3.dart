class Student {
  //Propiedades
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print("Constructor called"); //Revisamos si el constructor es llamado
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  //Creamos el objeto student de la clase Student
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}
