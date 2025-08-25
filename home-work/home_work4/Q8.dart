// Question 16
// Write a Dart program that evaluates three integer variables with different logical and comparison
// expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
// one of the expressions.
void main() {
  int num1 = 40;
  int num2 = 60;
  int num3 = 10;
  if (num1 > num2) {
    print("num1 > num2");
  } else if (num1 > num3 && num2 > num3) {
    print("num3 is the smallest number");
  } else if (num1 == num2) {
    print("two num are equal");
  }
  bool number1IsEqualNumber2 = num1 == num2;
  if (number1IsEqualNumber2) {
    print("Rule passed");
  } else {
    print("Rule failed");
  }
}
