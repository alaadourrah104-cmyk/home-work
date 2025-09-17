void main() {
  print(isAnagram("listen", 'silent'));
  print(isAnagram("car", "rat"));
}

bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  } else {
    List<String> list1 = s.split('')..sort();
    List<String> list2 = t.split('')..sort();
    return list1.join() == list2.join();
  }
}
