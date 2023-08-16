void main() {
  Set<String> fruits = {"Manzana", "Naranja", "Mango"};
  //Mostramos el set
  print(fruits); //{Manzana, Naranja, Mango, Uva}

  //Eliminamos todos
  fruits.clear();
  //Mostramos el set vacío
  print(fruits); //{}
}
