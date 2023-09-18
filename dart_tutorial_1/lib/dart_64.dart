// Definimos la clase generica delimitado a un tipo
class Data<T extends num> {
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
  // No se puede hacer lo siguiente:
  // Data<String> stringData = Data<String>("Hello");
}
