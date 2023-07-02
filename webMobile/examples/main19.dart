void main() {
  Map datos = {
    'nombre': 'Marines',
    'apellido': 'Mendez',
    'telefono': '435423652365324'
  };
  datos.remove('nombre');
  print(datos);

  print(datos['telefono']);

  datos['apellido'] = 'Gallegos';
  print(datos);

  datos['email'] = 'arromero@gmail.com';
  print(datos);
}
