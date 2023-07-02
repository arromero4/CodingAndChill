void main() {
  int edad = 20.2.toInt();
  double precio = double.parse('25');
  int codigoPostal = 12345;
  String name = 300.toString();
  bool esCliente = false;

//concatenacion
  print('hola ' + name);
//interpolacion
  print('hola ${name.length}');

//escapar caracteres
  print('hola \$300');
  print('hola bienvenido \n a codigofacilito');
  print('''hola bienvenido 
a codigofacilito
espero aprendas DART
''');
}
