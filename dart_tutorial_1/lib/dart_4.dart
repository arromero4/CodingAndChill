// Esta función retorna un future
Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}

void main() {
  print("Start");
  getUserName().then((value) => print(value));
  print("End");
}
