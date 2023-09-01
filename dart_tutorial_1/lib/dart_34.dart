class Laptop {
  // Método
  void show() {
    print("Laptop show method");
  }
}

class MacBook extends Laptop {
  void show() {
    super.show(); // Invocando el método show de la clase padre
    print("MacBook show method");
  }
}

void main() {
  // Creando un objeto de la clase MacBook
  MacBook macbook = MacBook();
  macbook.show();
}
