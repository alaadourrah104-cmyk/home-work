// Q2
// Create a class Car with private fields _brand and _year.
// - Add setters that reject empty brand names and years less than 1886 (first car invention).
// - Add getters for both.
// - In main(), demonstrate creating two car objects (one valid, one invalid input).

void main() {
  Car car1 = Car();
  car1.brand = "";
  car1.year = 1885;
  print("${car1.brand}, ${car1.year}");
  Car car2 = Car();
  car2.brand = "bmw";
  car2.year = 2025;
  print("${car2.year},${car2.brand} ");
}

class Car {
  String _brand = "kia";
  int _year = 1223;

  set brand(String brand) {
    if (brand.isEmpty) {
      print("invalid");
    } else {
      this._brand = brand;
    }
  }

  String get brand => _brand;
  set year(int year) {
    if (year < 1886) {
      print("first car invention");
    } else {
      this._year = year;
    }
  }

  int get year => _year;
}
