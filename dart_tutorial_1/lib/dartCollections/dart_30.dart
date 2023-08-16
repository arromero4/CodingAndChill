void main() {
  Set<String> fruits1 = {"Manzana", "Naranja", "Mango"};
  Set<String> fruits2 = {"Manzana", "Uvas", "Platano"};

  final differenceSet1 = fruits1.difference(fruits2);
  final differenceSet2 = fruits2.difference(fruits1);

  print(differenceSet1); //{Naranja, Mango}
  print(differenceSet2); //{Uvas, Platano}
}
