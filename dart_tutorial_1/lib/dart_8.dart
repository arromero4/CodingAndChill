class Table {
  String? name;
  String? color;

  // Constructor
  Table({this.name = "Table1", this.color = "White"});

  // Metodo
  void display() {
    print("Name: $name");
    print("Color: $color");
  }
}

void main() {
  Table table = Table();
  table.display();
}
