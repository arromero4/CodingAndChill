//definimos el nombre de la clase
class Animal {
  //definimos las propiedades/atributos
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  //creamos el metodo
  void display() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}
