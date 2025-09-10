// Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
// number and the second largest number (without sorting the list).

import 'dart:io';

void main() {
  print("Enter 6 numbers");
  List<int> numbers = [];

  for (int i = 0; i < 6; i++) {
    print("enter number :");
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int largest = numbers[0];
  int secondLargest = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
    } else if (numbers[i] != largest && numbers[i] > secondLargest) {
      secondLargest = numbers[i];
    }
  }
  print("the largest number is $largest");
  print("the  Second largest number is $secondLargest");
}
