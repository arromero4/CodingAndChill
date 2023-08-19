class Car {
  String? name;
  double? prize;

  // Constructor
  Car(String name, double prize) {
    this.name = name;
    this.prize = prize;
  }

  // Metodo
  void display() {
    //this no es necesario, solo se coloca para ejemplo
    print("Name: ${this.name}");
    print("Prize: ${this.prize}");
  }
}

void main() {
  //Creamos objeto car1
  Car car1 = Car("BMW", 500000.0);
  car1.display();

  //Creamos objeto car2
  Car car2 = Car("FERRARI", 700000.0);
  car2.display();
}
