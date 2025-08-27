// Q10
// Create a program with the numbers [3, 7, 2, 9, 12, 4, 6]. Print only the numbers that are divisible by
// 3

void main() {
  List<num> number = [3, 7, 2, 9, 12, 4, 6];
  for (int i = 0; i < number.length; i = i + 1) {
    if (number[i] % 3 == 0) {
      print(number[i]);
    }
  }
}
