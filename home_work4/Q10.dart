// Question 18
// Write a Dart program that reads environment variables from a map. If a value is null, replace it with
// a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
// conditions.

void main() {
  Map<String, String?> enviroment = {
    "name": "chat",
    "mode": null,
    "several": "local",
  };
  String name = enviroment["name"] ?? "dafault";
  String mode = enviroment["mode"] ?? "dafault-mode";
  String several = enviroment["several"] ?? "dafault-several";

  print("name:  ${name.toUpperCase()}"); // بحثت عن الطريقه
  print("mode:  ${mode.toUpperCase()}");
  print("several:  ${several.toUpperCase()}");
  if (enviroment.values.contains(null)) {
    print("Non-prod");
  } else {
    print("prod ready");
  }
}
