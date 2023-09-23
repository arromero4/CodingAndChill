Stream<int> countForOneMinute() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

main() async {
  await for (int i in countForOneMinute()) {
    print(i);
  } //imprime 1 al 5, 1 entero cada segundo
}
