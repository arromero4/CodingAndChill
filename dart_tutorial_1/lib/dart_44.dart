void main() {
  int a = 18;
  int b = 0;
  int res;

  try {
    res = a ~/ b;
    print("Resultado: $res");
  }
  //Regresa la excepción que está ocurriendo
  //En este caso es porque no se puede dividir entre cero
  catch (ex) {
    print(ex); //IntegerDivisionByZeroException
  }
}
