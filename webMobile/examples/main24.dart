void main() {
  inicio();
  accion().then((String value) {
    print('Este es el mensaje: $value');
  }).whenComplete(() {
    print('Este es el mensaje');
  }).catchError((error) {
    print('Este es el mensaje ${error.toString()}');
  });

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
