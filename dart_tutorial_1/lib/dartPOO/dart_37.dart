class Laptop {
  // Metodo
  void display() {
    print("Laptop display");
  }
}

class MacBook extends Laptop {
  // Metodo
  void display() {
    print("MacBook display");
    super.display();
  }
}

class MacBookPro extends MacBook {
  // Metodo
  void display() {
    print("MacBookPro display");
    super.display();
  }
}

void main() {
  var macbookpro = MacBookPro();
  macbookpro.display();
}
