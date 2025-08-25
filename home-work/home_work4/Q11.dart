// Question 19
// Write a Dart program that converts a list of names to a set of unique values. Create a map with
// counts of occurrences. Compare lengths and print a message if a specific name appears more than
// once.

void main() {
  List<String> names = [
    "Alaa",
    "Ali",
    "Ahmed",
    "Alaa",
    "Alaa ",
    "Ali",
    "Ahmed",
  ];
  Set<String> namesUnique = names.toSet();
  Map<String, int> count = {"Alaa": 3, "Ali": 2, "Ahmed": 2};

  if (names.length == namesUnique.length) {
    print("All number are unique");
  } else {
    print("there are names appear than once");
  }
}
