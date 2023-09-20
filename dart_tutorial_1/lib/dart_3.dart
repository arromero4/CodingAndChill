Future<void> fetchUserOrder() {
  //Imaginemos que esta funcion esta trayendo
  //informacion del usuario de otro servicio o base de datos.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}
