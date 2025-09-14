// Q1 Create a class City with attributes name and population. In main(), create two city objects and
// print their details.
void main() {
  City City1 = City("Egypt", 2384950);
  print("name of city1 is ${City1.name} and population is ${City1.population}");
  City City2 = City("Russia", 455666);
  print("name of city1 is ${City2.name} and population is ${City2.population}");
}

class City {
  String? name;
  int? population;
  City(String name, int population) {
    this.name = name;
    this.population = population;
  }
}
