// SIN GENERICS
// creando una clase para int
class IntData {
  int data;
  IntData(this.data);
}

// Creando una clase para double
class DoubleData {
  double data;
  DoubleData(this.data);
}

void main() {
  // Creamos un objeto para int y otro para double
  IntData intData = IntData(10);
  DoubleData doubleData = DoubleData(10.5);
  // Mostramos los datos
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");
}
