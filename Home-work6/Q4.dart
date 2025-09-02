// Q4
// Create a program with a map of student names to their marks. Print the name of the student with
// the highest mark.

void main() {
  Map<String, int> studentMark = {"Alaa": 90, "Ali": 60, "Mohamed": 50};
  String studentWithTheHighestMark = "";
  int highMark = 0;

  for (var item in studentMark.entries) {
    if (item.value > highMark) {
      highMark = item.value;
      studentWithTheHighestMark = item.key;
    }
  }
  print(
    "The student the has a  high mark is $studentWithTheHighestMark and the high mark is $highMark",
  );
}
