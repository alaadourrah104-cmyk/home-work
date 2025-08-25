//Question 11
//Write a Dart program that applies discounts to a price. Use nested if/else to apply different
//discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
//Print the final price.
import 'dart:io';

void main() {
  print("Enter the price :");
  double Price = double.parse(stdin.readLineSync()!);

  print("Enter if you student or not (yes or No) :");
  String student = stdin.readLineSync()!;

  print("Enter Do you have coupon(yes or No) :");
  String coupon = stdin.readLineSync()!;

  double discount = 0.0; // take a value because it can't be Null
  if (student == "yes".toLowerCase()) {
    discount = 0.04;
  } else if (coupon == "yes".toLowerCase()) {
    discount = 0.01;
  } else if (Price > 200) {
    discount = 0.09;
  }
  double finalPrice = Price - (Price * discount);
  print("The price after discount=$finalPrice");
}
