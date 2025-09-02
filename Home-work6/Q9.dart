// Q9
// Create a function that takes two integers as parameters and prints which one is larger.

void main() {
  whichTwoNumberLarger(30, 20);
}

void whichTwoNumberLarger(int x, int y) {
  if (x > y) {
    print("X Larger Than y");
  } else if (x == y) {
    print(" X And Y are Equal");
  } else {
    print("Y Larger Than X");
  }
}
