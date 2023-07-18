import 'package:system_info2/system_info2.dart';

void main() {
  int fib = fibIterative(10);
  print(fib);

  print("Processors         : ${SysInfo.getTotalPhysicalMemory()}");
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
