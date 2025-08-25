// Question 15
// Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
// '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
// safety where needed.
void main() {
  String path = '/';
  switch (path) {
    case '/':
      print("main ");
    case '/product':
      print("product ");
      Map<String, double> products = {"phone": 23443, "tv": 3455};
      print(products["phone"]);
      print(products["tv"]);
    case '/profile':
      print("profile");
      Map<String, String> profiles = {"name": "Alaa", "link": "uyfrxcc"};
      print(profiles["name"]);
      print(profiles["link"]);
      print({profiles["link"] ?? "invalid"});
    default:
      print("error");
  }
}
