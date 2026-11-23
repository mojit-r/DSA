// inserting the node at the beginning of the linked list.
// Time complexity: O(1)
// Auxiliary space complexity:O(1)

class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node prependNode(Node head, Node prependedNode) {
  prependedNode.next = head;
  return prependedNode;
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

void main() {
  Node first = Node(10);
  Node second = Node(20);
  Node third = Node(30);

  first.next = second;
  second.next = third;

  Node prepended = prependNode(first, Node(5));
  prepended = prependNode(prepended, Node(1));
  printLinkedList(prepended);
}

/*
- take the head of the linked list and the node which we have to prepend.
- assign the prepending nodes .next with the head of the node and return the prepend node.
*/
