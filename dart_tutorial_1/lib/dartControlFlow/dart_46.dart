void main() {
  try {
    checkAccount(-10);
  } catch (e) {
    print('La cuenta no puede ser negativa');
  }
}

void checkAccount(int amount) {
  if (amount < 0) {
    throw FormatException(); //Muestra una excepción
  }
}
