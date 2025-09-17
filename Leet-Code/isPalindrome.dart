void main() {}
bool isPallendrome(String r) {
  var formatString = r.replaceAll(RegExp(r'[^a-zA-Z0-9]'), "").toLowerCase();
  var start = 0;
  var end = formatString.length - 1;
  while (start <= end) {
    if (formatString[start] != formatString[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}
