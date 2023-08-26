class Student {
  //Propiedades privadas
  String? _firstName;
  String? _lastName;
  int? _age;

  //Getter para obtener el nombre completo
  String get fullName => "${_firstName!} ${_lastName!}";

  // Getter para leer la propiedad privada _age
  int get age => _age!;

  // Setter para actualizar la propiedad privada _firstName
  set firstName(String firstName) => _firstName = firstName;

  // Setter para actualizar la propiedad privada _lastName
  set lastName(String lastName) => _lastName = lastName;

  // Setter para actualizar la propiedad privada _age
  //Revisamos si es age(edad) es menor a cero
  set age(int age) {
    if (age < 0) {
      throw Exception("Age can't be less than 0");
    }
    _age = age;
  }
}

void main() {
  //Creamos objeto de la clase
  Student st = Student();
  //Establecemos valores del objeto usando setter
  st.firstName = "John";
  st.lastName = "Doe";
  st.age = 20;
  //Mostramos los valores del objeto
  print("Full Name: ${st.fullName}");
  print("Age: ${st.age}");
}
