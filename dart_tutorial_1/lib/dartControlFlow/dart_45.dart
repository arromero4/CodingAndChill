void main() {
  int a = 12;
  int b = 0;
  int res;
  try {
    res = a ~/ b;
  } on UnsupportedError {
    print('No puedes dividir entre cero'); //Se ejecuta
  } catch (ex) {
    print(ex);
  } finally {
    print('finally siempre se ejecuta'); //Se ejecuta
  }
}
