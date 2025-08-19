//10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
//after each.
//b) Create var greeting = 'Hi'; change it to another String and print.
//c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).

// answer a) var  نوعه بيثبت بمجرد ماياخد القيمه ولا يمكن تغيير النوع بعد مااخذه
//dynamic يمكن تغيير نوع المتغير
void main() {
  dynamic x = 2;
  print(x);
  x = "ali";
  print(x);
  var greeding = 'Hi';
  greeding = "alaa";
  print(greeding);
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
