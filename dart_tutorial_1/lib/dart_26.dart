void main() {
  Set<String> fruits = {"Manzana", "Naranja", "Mango"};

  fruits.add("Limon");
  fruits.add("Uva");

  print("Después de añadir elementos: $fruits");

  fruits.remove("Manzana");
  print("Después de eliminar elemento: $fruits");
}
