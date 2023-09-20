// usando una clase abstracta como interface
abstract class Area {
  void area();
}

// usando una clase abstracta como interface
abstract class Perimeter {
  void perimeter();
}

// implementando multiples interfaces
class Rectangle implements Area, Perimeter {
  // properties
  int length, breadth;

  // constructor
  Rectangle(this.length, this.breadth);

// Implementación de area()
  @override
  void area() {
    print('The area of the rectangle is ${length * breadth}');
  }

// Implementación de perimeter()
  @override
  void perimeter() {
    print('The perimeter of the rectangle is ${2 * (length + breadth)}');
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();
  rectangle.perimeter();
}
