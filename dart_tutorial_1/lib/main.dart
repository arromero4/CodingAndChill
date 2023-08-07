import 'package:dart_tutorial_1/dart_4.dart';
import 'package:dart_tutorial_1/dart_5.dart';
import 'package:dart_tutorial_1/dart_6.dart';

void main() async {
  // Dog dog1 = Dog(name: 'Draco', age: 5, height: 55.5, race: 'Electric');

  // print(dog1.name);
  // dog1.barking();

  // Square cuadrado = Square(5);
  // cuadrado.polygonName();
  // print(cuadrado.calculateArea());

  // Pato pato = Pato();
  // pato.caminar();
  // pato.nadar();
  // pato.volar();

  // User andres = User('arromero', '12345');
  // andres.password = '123456789';
  // print(andres.username);
  // print(andres.password);

  DataService dataService = DataService();
  print('inicio');

  try {
    final resp = await dataService.getPokemon();
    print(resp);
  } catch (e) {
    print(e);
  }

  print('fin');
}
