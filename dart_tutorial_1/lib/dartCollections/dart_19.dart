void main() {
  List<String> names = ["Andres", "Gian", "Meli"];
  List<String> names2 = ["Randy", "Karla", "Noe"];

  List<String> allNames = [...names, ...names2];
  print(allNames);
  //[Andres, Gian, Meli, Randy, Karla, Noe]
}
