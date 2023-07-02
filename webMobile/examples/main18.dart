void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  //List<String> colores = ['azul', 'verde','rosa','morado','Gris'];
  //colores.shuffle();
  //print(colores);
  //print(colores.sublist(2,4));
  //print(colores.reversed);
  //print(colores.where((String color) => color == 'morado'));

  print(numeros.reduce((valor, elemento) => valor + elemento));
  var resultado = numeros.fold(10, (valor, elemento) => valor + elemento);
  print(resultado);
}
