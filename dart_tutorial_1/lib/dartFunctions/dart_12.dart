//La función retorna tipo de datos enteros - int
//tiene dos parametros a y b
int add(int a, int b) {
  int sum = a + b;
  return sum;
}

void main() {
  int num1 = 10;
  int num2 = 20;

  //llamamos la función pasando num1, num2 como argumentos
  int total = add(num1, num2);
  print("La suma es: $total.");
  //30
}
