// Question 14
// Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
// scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
// greater than or equal to 40.

void main() {
  List<dynamic?> score = [4, 6, 7, 8];
  if (score.isEmpty) {
    print("No Scores");
  } else {
    dynamic sum = score[0] + score[3];
    print(sum);
    bool isEqualOrGreaterThan40 = sum > 40;
    if (isEqualOrGreaterThan40 == true) {
      print("sum greater than 40 or equal 40");
    } else {
      print("sum  less than 40");
    }
  }
}
