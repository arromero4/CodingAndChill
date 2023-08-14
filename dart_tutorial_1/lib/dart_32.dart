void main() {
  Set<String> fruits1 = {"Manzana", "Uvas", "Mango"};
  Set<String> fruits2 = {"Manzana", "Uvas", "Platano"};

  final intersectionSet = fruits1.intersection(fruits2);

  print(intersectionSet); //{Manzana, Uvas}
}
