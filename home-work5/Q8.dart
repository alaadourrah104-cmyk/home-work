// Q8
// Create a program with a setting called API_URL that is empty. If it is empty, replace it with
// 'https://example.com'. Print the new value in capital letters.
void main() {
  String API_URl = "";
  if (API_URl.isEmpty) {
    API_URl = 'https://example.com';
    print(API_URl.toUpperCase());
  }
}
