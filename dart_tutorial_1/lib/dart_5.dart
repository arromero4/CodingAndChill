class Car {
  String? name;
  double? prize;

  // Constructor en una sola linea
  Car(this.name, this.prize);

  // Metodo
  void display() {
    //this no es necesario
    print("Name: $name");
    print("Prize: $prize");
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
