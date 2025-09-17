// Q7
// Ask the user to input a list of integers.
// - Print the largest number, the smallest number, and their difference.
// - Calculate the average of the list.
// - Print all numbers that are above the average.
// - Finally, print how many numbers are even and how many are odd in the list.
import 'dart:io';

void main() {
  List<int> numbers = [];
  print("enter 5 number of integer");
  for (int i = 0; i < 5; i++) {
    print("enter a number");
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
    // sum++;
  }
  int sum = 0;
  for (int n in numbers) {
    sum = sum + n;
  }
  int difference = largest - smallest;

  List<int> aboveAverage = [];
  double average = sum / numbers.length;
  for (var item in numbers) {
    if (item > average) {
      aboveAverage.add(item);
    }
  }

  int oddCount = 0;
  int evenCount = 0;
  for (var num in numbers) {
    if (num > 0) {
      if (num % 2 == 0) {
        evenCount++;
      } else {
        oddCount++;
      }
    } else {
      print("invalid number");
    }
  }

  print(
    "the largest number is $largest and smallest number is $smallest and difference between them is $difference",
  );
  print("average number is $average");
  print("number  above average is is $aboveAverage ");
  print("numbet of even is $evenCount and number of odd is $oddCount");
}
