// Q4
// Create a class Product with private fields _name and _price.
// - Reject empty names and negative prices in setters.
// - Add a computed getter discountedPrice that returns the price with a 10% discount applied.
// - In main(), demonstrate setting values and printing the original and discounted price.
void main() {
  Product tv = Product();
  tv.price = -18;
  print("${tv.price}");
  tv.price = 200;
  print(
    "the original price is ${tv.price} and the discount is ${tv.disAccountPrice} ",
  );
}

class Product {
  String _name = "Alaa";
  double _price = 100;

  set name(String name) {
    if (name.isEmpty) {
      print("in valid");
    } else {
      this._name = name;
    }
  }

  String get name => _name;

  set price(double price) {
    if (price < 0) {
      print("in valid");
    } else {
      this._price = price;
    }
  }

  double get price => _price;

  double get disAccountPrice => _price - (_price * 0.10);
}
