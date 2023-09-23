// Esta función retorna un stream
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}

void main() async {
  // Puedes usar un await for
  // para obtener los valores del stream
  await for (String name in getUserName()) {
    print(name);
  }
}
