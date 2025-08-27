// Q13
// Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
// each name appears. Print only the names that appear more than once.

void main() {
  List<String> names = ["ALi", "Mona", "Ali", "Omar", "Mona"];
  int count = 0;
  for (int i = 0; i < names.length; i = i + 1) {
    for (int j = 0; j < names.length; j = j + 1) {
      if (names[i] == names[j]) {
        count = count + 1;
      }
    }
    if (count > 1) {
      // حاولت بس ال output  بيطلع الاسم ب مكررات زياده
      print(" ${names[i]} appear $count");
    }
  }
}
