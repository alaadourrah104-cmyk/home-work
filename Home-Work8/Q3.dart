// Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
// set its initial values using a constructor. - Then change the age of the object and print the updated
// details.
void main() {
  person alaa = person("Alaa", 20);
  alaa.age = 21;
  print(alaa.age);
}

class person {
  String? name;
  int? age;
  person(String name, int age) {
    this.age = age;
    this.name = name;
  }
}
