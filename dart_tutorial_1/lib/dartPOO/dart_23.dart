class NoteBook {
  //Propiedades privadas
  String? _name;
  double? _prize;

  //Setter para actualizar la propiedad privada _name
  set name(String name) => _name = name;

  //Setter para actualizar el valor
  //Si _prize es menor a 0, se lanza una excepcion
  set prize(double prize) {
    if (prize < 0) {
      throw Exception("Price cannot be less than 0");
    }
    this._prize = prize;
  }

  // Metodo
  void display() {
    print("Name: $_name");
    print("Price: $_prize");
  }
}

void main() {
  //Creamos el objeto de la clase
  NoteBook nb = NoteBook();
  // setting values to the object using setter
  //Establecemos los valores del objeto usando setter
  nb.name = "Dell";
  nb.prize = 250;

  //Muestra los valores del objeto
  nb.display();
}
