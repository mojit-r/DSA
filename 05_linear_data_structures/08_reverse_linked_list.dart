// reversing the linked list
// Time complexity: O(n)
// Auxiliary space complexity: O(1)

class Node {
  int data;
  Node? next;

  Node(this.data);
}

void printLinkedList(Node? head) {
  Node? currentNode = head;
  print('▼');
  while (currentNode != null) {
    print(currentNode.data);
    currentNode = currentNode.next;
  }
  print('▲');
}

Node? reverseNode(Node? head) {
  Node? currentNode = head;

  if (currentNode == null) {
    return null;
  }
  if (currentNode.next != null) {
    while (currentNode.next!.next != null) {
      Node? temp = currentNode.next!.next;
      currentNode.next!.next = head;
      head = currentNode.next;
      currentNode.next = temp;
    }
    currentNode.next!.next = head;
    head = currentNode.next;
    currentNode.next = null;
  }
  return head;
}

void main() {
  Node first = Node(10);
  Node second = Node(20);
  Node third = Node(30);
  Node fourth = Node(40);

  first.next = second;
  second.next = third;
  third.next = fourth;

  printLinkedList(reverseNode(first));
}


/*
- we take the head of the linked list as input
- we'll assign the head as the currentNode(just for naming clarity)
- then we'll check if the currentNode.next is not empty.
- then we'll add a while loop to check if the currentNode.next.next is not empty
- then inside that we'll assign the temp as the currentNode.next.next
- and assign the currrentNode.next.next = head 
- and now the new head is currentNode.next
- We assign temp to currentNode.next so that the remaining part of the linked list stays connected.
- then the loop will be there till its condition is true, which is next's next is there.
- then outside the loop, we'll assign the next's next the head, and assign it as the new head, and make the currentNode's next as null.
- at the end we'll return the head.
*/