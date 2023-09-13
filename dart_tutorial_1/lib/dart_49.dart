abstract class Vehicle {
  // Metodo abstracto
  void start();
  // Metodo abstracto
  void stop();
}

class Car extends Vehicle {
  // Implementacion de start()
  @override
  void start() {
    print('Car started');
  }

  // Implementacion de stop()
  @override
  void stop() {
    print('Car stopped');
  }
}

class Bike extends Vehicle {
  // Implementacion de start()
  @override
  void start() {
    print('Bike started');
  }

  // Implementacion de stop()
  @override
  void stop() {
    print('Bike stopped');
  }
}

void main() {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();
}
