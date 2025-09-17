void main() {}
bool containsDuplicate(List<int> nums) {
  List exist = [];
  for (var item in nums) {
    if (exist.contains(item)) {
      return true;
    }
    exist.add(item);
  }
  return false;
}
