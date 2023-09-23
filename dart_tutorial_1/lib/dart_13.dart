Stream<int> str(int n) async* {
  if (n > 0) {
    await Future.delayed(Duration(seconds: 2));
    yield n;
    yield* str(n - 2);
  }
}

void main() {
  str(10).forEach(print);
  // 10 8 6  4 2
}
