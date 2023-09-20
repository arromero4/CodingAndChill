abstract class Animal {
  // Propiedades
  String name;
  double speed;

  // Constructor
  Animal(this.name, this.speed);

  // Método Abstracto
  void run();
}

// este mixin solo puede usarse con la clase que extiende Animal
mixin CanRun on Animal {
  // Implementación del método abstracto
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // Constructor
  Dog(String name, double speed) : super(name, speed);
}
// No es posible realizar lo siguiente:
// class Bird with Animal { }

void main() {
  var dog = Dog('My Dog', 25);
  dog.run();
}
