void main() {
  String item1 = "Apple";
  String item2 = "Ant";
  String item3 = "Basket";
  String item4 = "Apple";

  print("Compara item 1 con item 2: ${item1.compareTo(item2)}");
  //Compara item 1 con item 2: 1
  print("Compara item 1 con item 3: ${item1.compareTo(item3)}");
  //Compara item 1 con item 3: -1
  print("Compara item 1 con item 4: ${item1.compareTo(item4)}");
  //Compara item 1 con item 4: 0
}
