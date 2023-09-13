// creando una interface usando una clase
class Laptop {
  // Método
  turnOn() {
    print('Laptop turned on');
  }

  // Método
  turnOff() {
    print('Laptop turned off');
  }
}

class MacBook implements Laptop {
  // Implementación de turnOn()
  @override
  turnOn() {
    print('MacBook turned on');
  }

  // Implementación de turnOff()
  @override
  turnOff() {
    print('MacBook turned off');
  }
}

void main() {
  var macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
}
