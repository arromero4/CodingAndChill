import 'package:system_resources/system_resources.dart';

void main() async {
  await SystemResources.init();
  int i = 10;
  print('----------------------------------------------------------------');
  print('Recursivo:');
  final stopwatch1 = Stopwatch()..start();
  int fibonacciRecursive = fibRecursive(10);
  print('Fibonacci de $i es: ${fibonacciRecursive.toString()}');
  stopwatch1.stop();
  print('Function Execution Time : ${stopwatch1.elapsed}');
  print('Memory Usage     : ${(SystemResources.memUsage() * 100).toInt()}%');
  print('----------------------------------------------------------------');
  print('Iterativo:');
  final stopwatch2 = Stopwatch()..start();
  int fibonacciIterative = fibIterative(10);
  print('Fibonacci de $i es: ${fibonacciIterative.toString()}');
  stopwatch2.stop();
  print('Function Execution Time : ${stopwatch2.elapsed}');
  print('Memory Usage     : ${(SystemResources.memUsage() * 100).toInt()}%');
  print('----------------------------------------------------------------');
}

//Recursivo
int fibRecursive(int n) {
  return n < 2 ? n : (fibRecursive(n - 1) + fibRecursive(n - 2));
}

int fibIterative(int n) {
  if (n <= 0) return 0;
  if (n == 1) return 1;

  int prev = 0;
  int current = 1;
  int result = 0;

  for (int i = 2; i <= n; i++) {
    result = prev + current;
    prev = current;
    current = result;
  }

  return result;
}
