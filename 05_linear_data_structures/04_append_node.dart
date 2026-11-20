// appending node at the end of the linked list
// Time complexity: O(n)
// Auxiliary space complexity: O(1)

class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node? AppendNode(Node? head, Node next) {
  Node? currentNode = head;
  if (currentNode == null) {
    currentNode = next;
    return currentNode;
  }

  while (currentNode != null) {
    if (currentNode.next != null) {
      currentNode = currentNode.next;
      continue;
    }
    currentNode.next = next;
    return currentNode.next;
  }

  return null;
}

Node? lastNode(Node? head) {
  Node? currentNode = head;
  if (currentNode == null) {
    throw 'empty linked list';
  }

  while (currentNode != null) {
    if (currentNode.next != null) {
      currentNode = currentNode.next;
      continue;
    }
    return currentNode;
  }

  return null;
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

  try {
    print(lastNode(first)!.data);
  } catch (e) {
    print(e.toString());
  }
  print(AppendNode(first, Node(40))!.data);
  printLinkedList(first);
}



/*
- take head of the node and the new node's data as input to the function.
- assign the head as the currentNode.
- check if the currentNode is empty if yes then update the currentNode with the next node value and return it.
- loop through the while loop checking for the condition that currentNode != null
- check if the currentNode.next != null if yes then we'll assign the currentNode to the currentNode.next and skip the other part of the loop(continue;)
- otherwise we'll assign currentNode.next = new node's data
*/