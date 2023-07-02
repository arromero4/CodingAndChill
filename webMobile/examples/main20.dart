void main() {
  Map datos = {
    'nombre': 'Marines',
    'apellido': 'Mendez',
    'telefono': '435423652365324'
  };

  for (String key in datos.keys) {
    print("Key: $key - valor: ${datos[key]}");
  }
  print('---------------');

  for (String value in datos.values) {
    print("Valor: $value");
  }
  print('---------------');
  for (MapEntry mapEntry in datos.entries) {
    print("Valor: ${mapEntry.value}");
  }
  print('---------------');
  datos.forEach((k, v) => print('key: $k - value: $v'));
}
