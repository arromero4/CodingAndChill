class Area {
  final int length;
  final int breadth;
  final int area;

  // constructor privado
  const Area._internal(this.length, this.breadth) : area = length * breadth;

  // Factory constructor
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and breadth must be positive");
    }
    // redirige al constructor privado
    return Area._internal(length, breadth);
  }
}

void main() {
  // Funcionará
  Area area = Area(10, 20);
  print("Area is: ${area.area}");

  // Hay que tomar en cuenta que
  // aqui hay un valor negativo
  Area area2 = Area(-10, 20);
  print("Area is: ${area2.area}");
}
