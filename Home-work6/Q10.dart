// Q10
// Create a function that takes an integer n and returns the sum of all numbers from 1 to n. Print the
// returned value.
void main() {
  print(returnSumOfNumber(5));
}

int returnSumOfNumber(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum = sum + i;
  }
  return (sum);
}
