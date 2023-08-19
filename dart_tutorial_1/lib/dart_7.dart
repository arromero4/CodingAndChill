class Chair {
  String? name;
  String? color;

// Constructor
  Chair({this.name, this.color});

// Metodo
  void display() {
    print("Name: $name");
    print("Color: $color");
  }
}

void main() {
  Chair chair = Chair(name: "Chair1", color: "Red");
  chair.display();
}
