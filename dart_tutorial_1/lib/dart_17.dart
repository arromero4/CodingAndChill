class Employee {
  //Propiedad privada
  var _name;

  //Método Getter para acceder a la propiedad privada _name
  String getName() {
    return _name;
  }

  //Método Setter para actualizar la propiedad privada _name
  void setName(String name) {
    _name = name;
  }
}

void main() {
  var employee = Employee();
  employee._name = "John"; //Funcionará
  print(employee.getName());
}
