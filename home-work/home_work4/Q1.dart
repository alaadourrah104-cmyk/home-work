//Question 9
//Write a Dart program that removes duplicate items from a list using a Set.
// Compare the unique count with the original list length and print a message if duplicates were removed
void main() {
  List<int> number = [2, 2, 2, 3, 4, 5, 5, 6, 6];
  Set<int> unique = number.toSet();
  print(unique);
  if (number.length == unique.length) {
    print("No Dublicate founded");
  } else {
    print("Dublicate Were Removed");
  }
}
