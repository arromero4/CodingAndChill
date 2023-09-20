class Car {
  // Propiedades
  String? name;
  double? prize;
}

class Tesla extends Car {
//Método para mostrar los valores de las propiedades
  void display() {
    print("Name: $name");
    print("Prize: $prize");
  }
}

class Model3 extends Tesla {
// Propiedades
  String? color;

//Método para mostrar los valores de las propiedades
  void display() {
    super.display();
    print("Color: $color");
  }
}

void main() {
// Cremos objeto de la clase Model3
  Model3 m = Model3();
// Establecemos valores
  m.name = "Tesla Model 3";
  m.prize = 50000.00;
  m.color = "Red";
// Mostramos valores
  m.display();
}
