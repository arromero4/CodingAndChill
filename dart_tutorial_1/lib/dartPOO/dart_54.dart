mixin CanFly {
  void fly() {
    print('I can fly');
  }
}

mixin CanWalk {
  void walk() {
    print('I can walk');
  }
}

//with se usa para aplicar ambos mixins
class Bird with CanFly, CanWalk {
  //aqui se tiene acceso a los metodos de los mixins
}

//with se usa para aplicar el mixin CanWalk
class Human with CanWalk {}

void main() {
  var bird = Bird();
  bird.fly();
  bird.walk();

  var human = Human();
  human.walk();
}
