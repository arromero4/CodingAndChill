class Bicycle {
  //Atributos
  String? color;
  int? size;
  int? currentSpeed;

  //Metodo
  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  //Metodo
  void display() {
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }
}

void main() {
  // Creamos el objeto de la clase
  Bicycle bicycle = Bicycle();

  //accedemos a las propiedades y métodos
  bicycle.color = "Red";
  bicycle.size = 26;
  bicycle.currentSpeed = 0;
  bicycle.changeGear(5);
  bicycle.display();
}
