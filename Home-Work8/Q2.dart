// Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
// to set the values when creating the object. - In main(), create two car objects with different data and
// print their details.
void main() {
  car car1 = car("Kia", 2000);
  print(car1.brand);
  print(car1.year);
  car car2 = car("marcedis", 1345);
  print(car2.brand);
  print(car2.year);
}

class car {
  String? brand;
  int? year;
  car(String brand, int year) {
    this.brand = brand;
    this.year = year;
  }
}
