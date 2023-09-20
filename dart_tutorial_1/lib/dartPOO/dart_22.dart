class NoteBook {
  //Propiedades privadas
  String? _name;
  double? _prize;

  // Setter para actualizar la propiedad privada _name
  set name(String name) => this._name = name;

  // Setter para actualizar la propiedad privada _prize
  set prize(double prize) => this._prize = prize;

  //Metodo que muestra los valores de las propiedades
  void display() {
    print("Name: ${_name}");
    print("Price: ${_prize}");
  }
}

void main() {
  //se crea objeto de la clase
  NoteBook nb = new NoteBook();
  //Se establecen valores del objeto usando Setter
  nb.name = "Dell";
  nb.prize = 500.00;
  //Muestra los valores del objeto
  nb.display();
}
