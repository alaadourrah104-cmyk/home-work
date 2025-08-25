// Question 12
// Create a Dart program that safely reads a phone number from a map. If the phone number is null,
// print a default message. Then update the phone number and print its length

void main() {
  Map<String, String?> data = {"phone": null};
  String? phone = data["phone"];
  if (phone == null) {
    print("No Phone Number");
  } else {
    print("error");
  }
  data["phone"] = "01221305439";
  String? phone2 = data["phone"]!;
  print(phone2.length);
}
