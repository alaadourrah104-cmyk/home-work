// Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
// Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
import 'dart:io';

void main() {
  print("enter number :");
  int num = int.parse(stdin.readLineSync()!);
  List<int> num1 = num;
  int sum = 0;
  for (var item in num1) {
    sum = sum + item;
  } //???
}
