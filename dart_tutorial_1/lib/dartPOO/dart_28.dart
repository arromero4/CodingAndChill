class Shape {
  // Propiedades
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  //Metodo para calcular el area del rectangulo
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  //Método para calcular el area de un triangulo
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}

void main() {
  //Creamos un objeto de la clase Rectangle
  Rectangle r = Rectangle();
  //Establecemos valores
  r.diameter1 = 10.0;
  r.diameter2 = 20.0;
  //Mostramos el area de un rectangulo
  print("Area of the rectangle: ${r.area()}");

  //Creamos un objeto de la clase Triangulo
  Triangle t = Triangle();
  //Establecemos valores
  t.diameter1 = 10.0;
  t.diameter2 = 20.0;
  //Mostramos el area de un triangulo
  print("Area of the triangle: ${t.area()}");
}
