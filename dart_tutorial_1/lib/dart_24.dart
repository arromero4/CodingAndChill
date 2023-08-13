void main() {
  //Declarando un Set de Frutas
  Set<String> fruits = {"Manzana", "Naranja", "Mango", "Platano"};

  //Ejemplos con las propiedades de Set
  print("Primer valor: ${fruits.first}");
  print("Último valor: ${fruits.last}");
  print("¿Fruits está vacío? ${fruits.isEmpty}");
  print("¿Fruits no está vacío? ${fruits.isNotEmpty}");
  print("La longitud del Set es: ${fruits.length}");
}
