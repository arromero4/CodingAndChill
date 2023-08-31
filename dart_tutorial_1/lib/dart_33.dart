class Laptop {
  // Constructor por Defecto
  Laptop() {
    print("Laptop constructor");
  }

  // Constructor Nombrado
  Laptop.named() {
    print("Laptop named constructor");
  }
}

class MacBook extends Laptop {
  // Constructor
  MacBook() : super.named() {
    print("MacBook constructor");
  }
}

void main() {
  var macbook = MacBook();
}
