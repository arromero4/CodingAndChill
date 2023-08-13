void main() {
  var myList = [3, 4, 2, 5];
  print(myList); //[3, 4, 2, 5]

  //inserta varios valores en el indice 1
  myList.insertAll(1, [6, 7, 10, 9]);
  print(myList); //[3, 6, 7, 10, 9, 4, 2, 5]
}
