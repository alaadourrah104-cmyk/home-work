// Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
// the temperature in Fahrenheit. In main(), create an object and print the converted value.
void main() {
  Temperature degree = Temperature(23);
  print("Tempreture in Fahrenheit is ${degree.toFahrenheit()}");
}

class Temperature {
  int? celsius;
  Temperature(int celsuis) {
    this.celsius = celsuis;
  }
  double toFahrenheit() {
    return (celsius! * 9 / 5) + 32;
  }
}
