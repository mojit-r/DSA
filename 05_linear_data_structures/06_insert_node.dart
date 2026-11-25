// inserting node in the linked list
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

Node insertNode(Node head, Node insertAt, Node next) {
  Node? currentNode = head;

  while (currentNode != null) {
    if (identical(currentNode, insertAt)) {
      final temp = currentNode.next;
      currentNode.next = next;
      next.next = temp;
      break;
    }
    currentNode = currentNode.next;
  }
  return head;
}

void main() {
  Node first = Node(10);
  Node second = Node(20);
  Node third = Node(20);
  Node fourth = Node(40);

  first.next = second;
  second.next = third;
  third.next = fourth;

  final next = Node(25);

  printLinkedList(insertNode(first, third, next));
}


/*
- take the headNode, the insertAt Node and the the next node(which we have to insert) as input.
- take the head as the currentNode and process throught the while loop will the currentNode is not empty.
- then inside while loop We check whether currentNode and insertAt refer to the exact same Node object
- if yes then temp = current.next, currentNode.next = next and next.next = temp and then break
*/