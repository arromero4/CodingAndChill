import 'package:system_resources/system_resources.dart';

//Recursivo
int fibRecursive(int n) {
  return n < 2 ? n : (fibRecursive(n - 1) + fibRecursive(n - 2));
}

//Iterativo
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

void main() async {
  await SystemResources.init();
  int i = 10;

  print('Recursivo:');
  final stopwatch1 = Stopwatch()..start();
  int fibonacciRecursive = fibRecursive(10);
  stopwatch1.stop();

  print('Fibonacci de $i es: ${fibonacciRecursive.toString()}');
  print('Tiempo de ejecución: ${stopwatch1.elapsed}');
  print('Uso de memoria: ${(SystemResources.memUsage() * 100).toInt()}%');

  print('Iterativo:');
  final stopwatch2 = Stopwatch()..start();
  int fibonacciIterative = fibIterative(10);
  stopwatch2.stop();

  print('Fibonacci de $i es: ${fibonacciIterative.toString()}');
  print('Tiempo de ejecución: ${stopwatch2.elapsed}');
  print('Uso de memoria: ${(SystemResources.memUsage() * 100).toInt()}%');
}
