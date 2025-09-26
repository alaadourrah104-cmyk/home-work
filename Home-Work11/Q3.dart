// Q3
// Given an array of integers nums sorted in ascending order, and an integer target, write a function to
// search target in nums.
// - If target exists, return its index. Otherwise, return -1.
// - The algorithm must run in O(log n) time complexity.
// Examples:
// - Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
// Explanation: 9 exists in nums and its index is 4.
// - Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
// Explanation: 2 does not exist in nums, so return -1.
void main() {
  List<double> numbers = [3, 8, 10, 14, 34, 90];
  double target = 9;
  int result = searchNumInList(numbers, target);
  if (result != -1) {
    print(" $target found in index $result");
  } else {
    print("not found");
  }
}

int searchNumInList(List<double> numbers, double target) {
  int start = 0;

  double end = numbers.length - 1;
  while (start <= end) {
    int middle = (start + end) ~/ 2; // علشان يرجع int
    if (target < numbers[middle]) {
      start = 0;
      end = middle - 1;
    } else if (numbers[middle] < target) {
      start = middle + 1;
      end = numbers.length - 1;
    } else {
      return middle;
    }
  }
  return -1;
}