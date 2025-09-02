// Q11
// Create a function that takes a required product name and an optional discount percentage. If the
// discount is provided, print 'Product has discount %'. If not, print 'Product has no discount'.

void main() {
  takeProductAndDiscountPercentage("Radio", 20);
  takeProductAndDiscountPercentage("Tv", null);
}

void takeProductAndDiscountPercentage(String product, var discount) {
  if (discount != null) {
    print("$product has discount: $discount%");
  } else {
    print("product has no discount");
  }
}
