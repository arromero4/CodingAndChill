void main() {
  print('Jose');
  bienvenida();
  print('Maria');
  bienvenida();
}

bienvenida() {
  int descuento = 50;
  int precio = 1456;
  print('''Bienvenido a codigofacilito, 
  en este curso aprenderas DART. 
  Por ser la primera vez, 
  se aplicará descuento.''');
  double aplicarDescuento = (precio * descuento) / 100;
  double precioTotal = precio - aplicarDescuento;

  print('Precio con descuento: $precioTotal');
}
