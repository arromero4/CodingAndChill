void main() {
  List<String> colores = ['azul', 'verde', 'rosa', 'morado', 'Gris'];

  for (int i = 0; i < colores.length; i++) {
    print(colores[i]);
  }
  print('-----');
  for (String color in colores) {
    print(color);
  }
  print('-----');

  colores.forEach((String color) => print(color));
}
