// Question 20
// Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
// have a parent. Use a switch statement on an area variable (general or restricted) to decide what
// message to print
import 'dart:io';

void main() {
  print("enter the age :");
  int age = int.parse(stdin.readLineSync()!);
  String area = "general";
  bool hasParents = false;
  if (age < 18 && !hasParents) {
    print("this area is banned");
  } else {
    switch (area) {
      case "general":
        print("Acces to genaral area are avaliable");
      case "restricted":
        print("Acces to genaral area are  not avaliable");
      default:
        print("invalid");
    }
  }
}
