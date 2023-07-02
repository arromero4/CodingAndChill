void main() {
  int edad = 13;
  bool esMenor = false;
  do {
    if (edad >= 18) {
      print('Es mayor $edad');
      esMenor = false;
    } else {
      print('Tiene $edad');
      esMenor = true;
    }
    ++edad;
  } while (esMenor);
}
