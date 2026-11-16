// Traversing through the linked list
// Time complexity: O(n)
// Auxiliary space complexity: O(1)

class Node {
  int data;
  Node? next;

  Node(this.data);
}

void main() {
  Node first = Node(11);
  Node second = Node(12);
  Node third = Node(13);
  Node fourth = Node(14);

  first.next = second;
  second.next = third;
  third.next = fourth;

  Node? currentNode = first;

  while (currentNode != null) {
    print(currentNode.data);
    currentNode = currentNode.next;
  }
}


/*
- we start with the first node as the currentNode to begin the traversing.
- we'll check if the currentNode is null or not, if the currentNode is not null then we'll enter the loop.
- then we can access the data using currentNode.data
- and at the end of the loop we're assigning currentNode.next to currentNode, so we can traverse through the linked list.
- this will continue traversing and accessing the data till the currentNode is not null.
- once the currentNode is null it will stop the while loop.
*/