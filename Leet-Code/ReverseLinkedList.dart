void main() {
  var head = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));
  print("${head}");

  var reversed = reverseList(head);
  print("${reversed}");
}

class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

ListNode? reverseList(ListNode? head) {
  ListNode? previous = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? next = current.next;
    current.next = previous;
    previous = current;
    current = next;
  }
  return previous;
}
