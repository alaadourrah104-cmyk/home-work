// Q5
// Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.
void main() {
  String text = "EGP 12.50";
  String number = text.replaceAll("EGP", "");
  double num = double.parse(number);
  print(num);
  //بحثت عن الطريقه  ووجدت هذه الداله الجاهزه وطريقه تحويل ٍ String to double
}
