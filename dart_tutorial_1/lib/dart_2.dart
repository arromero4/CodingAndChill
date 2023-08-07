class PolygonShape {
  String name;
  double area;
  double perimeter;

  PolygonShape(this.name, this.area, this.perimeter);

  void polygonName() {
    print('Polygon name: $name');
  }
}

class Square extends PolygonShape {
  double side;

  Square(this.side) : super('Cuadrado', 0, 0);

  double calculateArea() {
    area = side * side;
    return area;
  }
}
