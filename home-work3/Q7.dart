//7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
//b) Convert it to a Set to remove duplicates and print it.
//c) Use add(), remove(), and contains() with the set, printing each result.

void main() {
  List<int> number = [4, 4, 5, 6, 6, 7];
  Set<int> num = number.toSet();
  print(num);
  num.add(10);
  print(num);
  num.remove(5);
  print(num);
  print(num.contains(2));
}
