// Q1
// Create a program that removes duplicate numbers from the list [5, 3, 5, 7, 3, 9] and prints how
// many unique numbers remain.
void main() {
  List<int> num = [5, 3, 5, 7, 3, 9];
  Set<int> uniqueNum = num.toSet();
  print("unique numbrer is $uniqueNum");
  int number = uniqueNum.length;
  print("unique numbrer is $number");
}
