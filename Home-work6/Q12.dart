// Q12
// Create a function that takes named parameters firstName, lastName, and an optional named
// parameter age. Print the full name and, if age is provided, also print 'Age: X'.
void main() {
  printFullName("Alaa", "Ashraf", null);
  printFullName("Alaa", "Ashraf", 20);
}

void printFullName(String firstName, String lastName, int? age) {
  String fullName = firstName + lastName;
  if (age == null) {
    print("Full Name is $fullName");
  } else {
    print("Full Name is $fullName");
    print("Age : $age");
  }
}
