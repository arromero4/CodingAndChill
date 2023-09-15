class Area {
  final int length;
  final int breadth;
  final int area;

  // Initializer list
  const Area(this.length, this.breadth) : area = length * breadth;
}

void main() {
  Area area = Area(10, 20);
  print("Area is: ${area.area}");

  // Hay que tomar en cuenta que
  // aqui hay un valor negativo
  Area area2 = Area(-10, 20);
  print("Area is: ${area2.area}");
}
