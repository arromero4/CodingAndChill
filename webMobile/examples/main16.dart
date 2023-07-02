void main() {
  List<String> colores = ['azul', 'verde', 'rosa', 'morado', 'Gris'];

  colores[3] = 'Amarillo';
  colores.add('Celeste');
  colores.removeAt(3);
  print(colores);
}
