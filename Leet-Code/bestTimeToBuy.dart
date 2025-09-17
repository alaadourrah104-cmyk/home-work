void main() {}
int findLargestAndSmallest(List<int> number) {
  int smallest = number[0];
  int largest = number[0];
  int maxProfit = 0;
  for (var item in number) {
    if (item > largest) {
      largest = item;
    }
    if (item < smallest) {
      smallest = item;
      largest = item;
    }
    var currentProfit = largest - smallest;
    if (currentProfit > maxProfit) {
      maxProfit = currentProfit;
    }
  }
  return maxProfit;
}
