void main() {
  List<int> numbers = [3, 2, 2, 1, 3, 4, 5, 4];

  int singleNum = 0;
  for (int i = 0; i < numbers.length; i++) {
    int count = 0;
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        count++;
      }
    }
    if (count == 0) {
      singleNum = numbers[i];
    }
  }
}
