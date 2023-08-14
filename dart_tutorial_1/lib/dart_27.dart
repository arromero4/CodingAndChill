void main() {
  Set<int> numbers = {10, 20, 30};
  numbers.addAll([40, 50]);
  print("Después de añadir 40 y 50: $numbers");
  //Después de añadir 40 y 50: {10, 20, 30, 40, 50}
}
