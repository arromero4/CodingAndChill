class Person {
  // Propiedades
  String? name;
  int? age;

  // Método
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

//Clase Student que hereda de Clase Person
class Student extends Person {
  // Campos
  String? schoolName;
  String? schoolAddress;

  // Método
  void displaySchoolInfo() {
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

void main() {
  //Creando objeto de la clase Student
  var student = Student();
  student.name = "John";
  student.age = 20;
  student.schoolName = "ABC School";
  student.schoolAddress = "New York";
  student.display();
  student.displaySchoolInfo();
}
