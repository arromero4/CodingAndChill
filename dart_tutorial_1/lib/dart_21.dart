class NoteBook {
  // Propiedades privada
  String? _name;
  double? _prize;

  // Constructor
  NoteBook(this._name, this._prize);

  // Getter para acceder a la propiedad privada _name
  String get name => this._name!;

  // Getter para acceder a la propiedad privada _prize
  double get prize => this._prize!;
}

void main() {
  //Se crea objeto de la clase
  NoteBook nb = NoteBook("Dell", 500);
  // Se muestran los valores del objeto
  print(nb.name);
  print(nb.prize);
}
