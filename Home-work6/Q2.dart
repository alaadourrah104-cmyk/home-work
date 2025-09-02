// Q2
// Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers

void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int sum = 0;
  int count = 0;
  double average;
  for (int i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
    count = count + 1;
  }

  average = (sum / count);

  print("Average is $average");
}
