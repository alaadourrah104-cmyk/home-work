// Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
// numbers, and then calculate the difference between them.
import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    print("Enter 5 numbers : ");
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int largest = numbers[0];
  int smallest = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    } else if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  int difference = largest - smallest;
  print("the largest number is $largest");
  print("the smallest number is $smallest");
  print("the difference between them is $difference");
}
