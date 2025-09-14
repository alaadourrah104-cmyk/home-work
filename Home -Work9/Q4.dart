// Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
// that increases the salary. In main(), create an employee, give them a raise, and print the new
// salary
void main() {
  Employee Emp = Employee("Alaa", 1000);
  print("the old salary is ${Emp.salary}");
  Emp.giveRaise(100);
  print("the new salary is ${Emp.salary}");
}

class Employee {
  String? name;
  double? salary;
  Employee(String name, double salary) {
    this.name = name;
    this.salary = salary;
  }

  void giveRaise(int amount) {
    salary = salary! + amount;
  }
}
