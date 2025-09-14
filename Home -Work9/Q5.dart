// Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
// courses: one with custom duration and one with the default. Print both.

void main() {
  Course course1 = Course("course one");
  print(course1.duration);
  Course course2 = Course("course two", 23);
  print(course2.duration);
}

class Course {
  String? title;
  int? duration;

  Course(String title, [int? duration = 3]) {
    this.title = title;
    this.duration = duration;
  }
}
