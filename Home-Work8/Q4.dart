// Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. -
// Give price a default value of 0. - Create two objects: one with a custom price and one with the
// default price. Print their details.
void main() {
  Product tv = Product();
  tv.price = 1299;
  print(tv.price);
  Product phone = Product();
  print(phone.price);
}

class Product {
  String? name;
  double? price = 0;
}
