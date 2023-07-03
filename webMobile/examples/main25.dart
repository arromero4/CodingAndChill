void main() async {
  inicio();
  try {
    String value = await accion();
    print('Este es el valor: $value');
  } catch (error) {
    print('Este es el error: ${error.toString()}');
  }

  fin();
}

inicio() {
  print('inicio');
}

Future<String> accion() async {
  return Future.delayed(Duration(seconds: 4), () => 'Listo...');
}

fin() {
  print('fin');
}
