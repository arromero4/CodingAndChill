class Student {
  //Propiedad de solo lectura
  final _schoolname = "ABC School";

  //Getter
  String getSchoolName() {
    return _schoolname;
  }
}

void main() {
  var student = Student();
  print(student.getSchoolName());
  //No podemos cambiar el valor la propiedad
  //student._schoolname = "XYZ School";
}
