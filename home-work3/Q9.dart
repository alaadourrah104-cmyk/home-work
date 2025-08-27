//9. a) Create List> students with two items, each having name and grade.
//b) Print the grade of the second student using index and key.
//c) Add both grades and print the average grade as double.
void main() {
  List<Map<String, dynamic>> students = [
    {'Name': 'ali', 'grade': 66},
    {'Name': 'Alaa', 'grade': 76},
  ];
  print(students[1]['grade']);
  int x = students[0]['grade'] + students[0]['grade'];
  print(x);
  double average = (students[0]['grade'] + students[0]['grade']) / 2;
  print(average);
}
