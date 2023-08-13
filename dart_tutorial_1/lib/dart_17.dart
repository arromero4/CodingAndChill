void main() {
  var list = [10, 20, 30, 40, 50];
  print("Lista antes de remover elemento: $list");
  //Lista antes de remover elemento: [10, 20, 30, 40, 50]

  //Rango inicio: 0, fin: 3
  //elimina del 0 al 2
  list.removeRange(0, 3);
  print("Lista despues de remover elemento :$list");
  //Lista despues de remover elemento :[40, 50]
}
