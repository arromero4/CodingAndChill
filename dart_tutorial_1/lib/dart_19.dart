void main() {
// función anonima
  var cube = (int number) {
    return number * number * number;
  };

  print("El cubo de 2 es: ${cube(2)}");
  print("El cubo de 3 es: ${cube(3)}");
}
