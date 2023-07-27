void main() {
  String address1 = "  USA "; //Espacios a los lados
  String address2 = "  Japan"; //Espacios al inicio
  String address3 = "Delhi   "; //Espacio al final

  print("Dirección 1 sin espacios a los lados: '${address1.trim()}'");
  print("Dirección 2 sin espacio al inicio: '${address2.trimLeft()}'");
  print("Dirección 3 sin espacio al final: '${address3.trimRight()}'");
}
