// deleting a node form a linked list.
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

Node? deleteNode(Node? head, Node nodeToDelete) {
  if (identical(head, nodeToDelete)) {
    head = head!.next;
  }
  Node? currentNode = head;
  while (currentNode != null) {
    if (identical(currentNode.next, nodeToDelete)) {
      currentNode.next = nodeToDelete.next;
      break;
    }
    currentNode = currentNode.next;
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

  final nodeToDelete = first;

  printLinkedList(deleteNode(first, nodeToDelete));
}


/*
- take the head of the link list and  the Node to delete as input.
- check if the head is identical to the node we want to delete, update the head to head.next. This removes the first node from the list.
- and assign the head as currentNode to traverse through the list.
- check while loop if the currentNode is not null.
- we'll check if currrentNode.next is identical to the node to delete(remove).
- if yes then we'll assign the currentNode.next to deleteNode.next, and break the loop.
- otherwise we'll assign the currentNode to currentNode.next for keeping the traversing on going.
*/