class Car {
  //declarando variable static
  static String? name;
  //declarando metodo static
  static display() {
    print("The car name is ${Car.name}");
  }
}

void main() {
  //accediendo a la variable static
  Car.name = 'Toyota';

  //invocando el método static
  Car.display();
}
