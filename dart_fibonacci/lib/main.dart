import 'package:system_resources/system_resources.dart';

void main() {
  SystemResources.init();

  print('CPU Load Average : ${(SystemResources.cpuLoadAvg() * 100).toInt()}%');
  print('Memory Usage     : ${(SystemResources.memUsage() * 100).toInt()}%');
}


  // int i = 10;
  // print('----------------------------------------------------------------');
  // print('Recursivo:');
  // final stopwatch = Stopwatch()..start();
  // int fibonacciRecursive = fibRecursive(10);
  // print('Fibonacci de $i es: ${fibonacciRecursive.toString()}');
  // stopwatch.stop();
  // print('Function Execution Time : ${stopwatch.elapsed}');
  // print('----------------------------------------------------------------');

  //int fibonacciIterative = fibIterative(10);

  //print(fibonacciIterative.toString());
//}

// int fibRecursive(n) {
//   //Recursivo
//   int fibonacci(int n) {
//     if (n == 0 || n == 1) return n;
//     return fibonacci(n - 1) + fibonacci(n - 2);
//   }

//   var result = fibonacci(n);
//   return result;
// }

// int fibIterative(n) {
//   //iterativo
//   int n1 = 0, n2 = 1, n3;
//   print(n1);
//   print(n2);

//   for (int i = 2; i <= 10; i++) {
//     n3 = n1 + n2;
//     print('$n3');
//     n1 = n2;
//     n2 = n3;
//   }
// }
