// Definimos el método generico
T genericMethod<T>(T value) {
  return value;
}

void main() {
  // llamamos al método generico
  print("Int: ${genericMethod<int>(10)}");
  print("Double: ${genericMethod<double>(10.5)}");
  print("String: ${genericMethod<String>("Hello")}");
}
