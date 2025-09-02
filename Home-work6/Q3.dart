// Q3
// Create a program with a set of numbers [3, 6, 9, 3, 12, 15]. Print whether the set contains the
// number 10.

void main() {
  Set<int> numbers = {3, 6, 9, 3, 12, 15};
  bool contain10 = numbers.contains(10);
  print("Is this set contain number 10 : $contain10");
}
