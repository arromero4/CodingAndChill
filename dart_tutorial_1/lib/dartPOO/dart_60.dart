// Usando Generics
class Data<T> {
  T data;
  Data(this.data);
}

void main() {
  // Creamos un objeto para int y otro para double
  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);

  // Mostramos los datos
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");
}
