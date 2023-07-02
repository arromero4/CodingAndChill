void main() {
  bienvenida('Jose', 'Nuevo');
  bienvenida('Maria', 'Antiguo');
  bienvenida('Gian', 'Top', posicion: 1);
}

bienvenida(String nombre, String tipo, {int posicion = 10}) {
  int descuento = 0;
  String mensaje = '';
  switch (tipo) {
    case 'Nuevo':
      descuento = 50;
      mensaje = 'Por ser la primera vez aquí';
      break;
    case 'Antiguo':
      descuento = 60;
      mensaje = 'Por ser un usuario antiguo';

      break;
    case 'Top':
      descuento = 70;
      mensaje = 'Por ser un alumno top y tener el lugar $posicion';
      break;
  }

  double precio = descuentoUsuario(descuento);
  print('''$nombre bienvenido a codigofacilito, en este curso aprenderas DART. 
  $mensaje, se aplicará descuento del $descuento%. 
  Precio con descuento: $precio''');
}

descuentoUsuario(int descuento) {
  int precio = 1456;
  double aplicarDescuento = (precio * descuento) / 100;
  double precioTotal = precio - aplicarDescuento;
  return precioTotal;
}
