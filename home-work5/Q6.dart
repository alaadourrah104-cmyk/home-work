// Q6
// Create a program that calculates the factorial of 6 and prints the result.
void main() {
  int num = 6;
  int factorial = 1;
  for (int i = 1; i < num; i = i + 1) {
    factorial = factorial * i;
    // print(factorial);
  }
  print(factorial);
}
