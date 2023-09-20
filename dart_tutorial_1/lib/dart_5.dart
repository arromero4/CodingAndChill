Future<void> fetchUserOrder() {
  //Imaginemos que esta funcion esta trayendo
  //informacion del usuario pero encuentra un bug
  return Future.delayed(const Duration(seconds: 2),
      () => throw Exception('Logout failed: user ID is invalid'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}
