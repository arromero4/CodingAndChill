void main() {
  try {} on UnsupportedError {
    print('No puedes dividir entre cero'); //Se ejecuta
  } catch (ex) {
    print(ex);
  } finally {
    print('finally siempre se ejecuta'); //Se ejecuta
  }
}
