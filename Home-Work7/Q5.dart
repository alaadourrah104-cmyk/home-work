// Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
// 10, then calculate the sum of all results.

import 'dart:io';

void main() {
  print("Enter number");
  int num1 = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= num1; i++) {
    int multiplication = i * num1;
    print("$num1 * $i = $multiplication");
    sum += multiplication;
  }
  print("sum of multiplication is $sum");
}
