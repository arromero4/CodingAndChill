class Employee {
  //Propiedades privada
  int? _id;
  String? _name;

//Método Getter para acceder a la propiedad privada _id
  int getId() {
    return _id!;
  }

//Método Getter para acceder a la propiedad privada _name
  String getName() {
    return _name!;
  }

//Método Setter para actualizar la propiedad privada _id
  void setId(int id) {
    _id = id;
  }

//Método Setter para actualizar la propiedad privada _name
  void setName(String name) {
    _name = name;
  }
}

void main() {
  //Objeto de la clase Employee
  Employee emp = Employee();
  //Establecer valores para el objeto usando el método setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  //Recibiendo los valores del objeto
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");
}
