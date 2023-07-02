void main() {
  int compra = 1000;
  int precioMax = 2000;
  bool esFrecuente = true;
  bool tieneDeuda = false;

  print(compra >= precioMax && esFrecuente);
  print(compra >= precioMax || esFrecuente && !tieneDeuda);
}
