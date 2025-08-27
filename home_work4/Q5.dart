// Question 13
// Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
// statement to print a message for each grade.

import 'dart:io';

void main() {
  print("enter your mark :");
  int mark = int.parse(stdin.readLineSync()!);
  String grade = "";
  if (mark > 85) {
    grade = "A";
  } else if (mark > 75) {
    grade = "B";
  } else if (mark > 60) {
    grade = "C";
  } else {
    grade = "D";
  }

  switch (grade) {
    case "A":
      print("Excellent");
    case "B":
      print("Very Good");
    case "C":
      print("Good");
    case "D":
      print("Study More");
    default:
      print("error");
  }
}
