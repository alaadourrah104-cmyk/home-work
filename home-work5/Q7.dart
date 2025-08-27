// Q7
// Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
// and print the total.
void main() {
  List<int> score = [10, 0, 20, 30];
  int result = 0;
  for (int i = 0; i < score.length; i = i + 1) {
    if (score[i] != 0) {
      result = result + score[i];
      // print(result);
    } else
      ("contain zero");
  }
  print(result);
}
