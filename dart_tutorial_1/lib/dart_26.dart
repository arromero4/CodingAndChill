class Car {
  // Propiedades
  String? name;
  double? prize;
}

class Tesla extends Car {
  // Metodo para mostrar los valores de las propiedades
  void display() {
    print("Name: $name");
    print("Prize: $prize");
  }
}

void main() {
  //Creamos objeto de la clase
  Tesla t = Tesla();
  //Establecemos valores de las propiedades
  t.name = "Tesla Model 3";
  t.prize = 50000.00;
  //Mostramos los valores de las propiedades
  t.display();
}
