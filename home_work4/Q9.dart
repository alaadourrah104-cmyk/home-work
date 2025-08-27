// Question 17
// Write a Dart program that formats a price tag string with a currency. Apply string methods such as
// toString, padLeft, and length to format and compare the results.

void main() {
  double price = 82.5;
  String priceToString = price.toString();
  String priceTag = "\$" + priceToString;
  String padleft = priceTag.padLeft(20);

  // المسافه اللي هيضيفها من اليسار لتحسين المظهر من اليسار

  int tag = priceTag.length;
  int padleftt = padleft.length;
  print("tag is : $priceTag");
  print("padleft is: $padleft");
  print("length normal is: $tag");
  print("length of padleft is :$padleftt");

  if (tag > padleftt) {
    print("tag is longer in length");
  } else if (padleftt > tag) {
    print("pad left is longer in length");
  } else {
    print("tag and pad left have the same length");
  }
}
