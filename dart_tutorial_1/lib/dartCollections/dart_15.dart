void main() {
  var list = [10, 11, 12, 13, 14];
  print("Lista antes de remover elemento: $list");
  //Lista antes de remover elemento: [10, 11, 12, 13, 14]

  //Se removera el elemento del indice 3, el 13
  list.removeAt(3);
  print("Lista despues de remover elemento :$list");
  //Lista despues de remover elemento :[10, 11, 12, 14]
}
