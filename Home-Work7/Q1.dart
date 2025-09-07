// Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
// Then, check if the average is greater than 50 or not.

import 'dart:io';

void main() {
  print("Enter num1");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter num2");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter num3");
  int num3 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2 + num3;
  print("sum = $sum");
  var average = (sum / 3);
  print("average =$average");
  if (average > 50) {
    print("the average is greater than 50");
  } else if (average == 50) {
    print("the average is Equal 50");
  } else {
    print("the average is less than 50");
  }
}
