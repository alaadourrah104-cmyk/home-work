// Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
// print the largest digit.
import 'dart:io';

 
void main() {

  print("Enter a number:");
  String number = stdin.readLineSync()!;

  List<String> digits = number.split('');

  int sum = 0;
  int largest = 0;


  for (var d in digits) {
    int digit = int.parse(d); 
    sum += digit;
    if (digit > largest) {
      largest = digit; 
    }
  }

  print("Sum : $sum");
  print("Largest digit: $largest");
}


