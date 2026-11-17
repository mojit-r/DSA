// check if the linked list contains a node
// Time complexity: O(n)
// Auxiliary space complexity: O(1)

class Node {
  int data;
  Node? next;

  Node(this.data);
}

bool containsNode(Node? head, int target) {
  Node? currentNode = head;
  while (currentNode != null) {
    if (currentNode.data == target) {
      return true;
    }
    currentNode = currentNode.next;
  }
  return false;
}

void main() {
  Node first = Node(10);
  Node second = Node(20);
  Node third = Node(30);
  Node fourth = Node(40);

  first.next = second;
  second.next = third;
  third.next = fourth;

  print(containsNode(first, 30));
}


/*
- take the head(start) of the node as input and also the node's data which we have to check for inside the linked list.
- set the head node as the currentNode.
- loop through the while loop with condition to check if the current node is not null.
- then check if the currentNode.data is equal to the target, if yes then return true 
- else we'll assign the currentNode = currentNode.next and look forward in the linked list.
- if the linked list doesn't contain the target then the loop will end at some point and the function returns false after the loop ends.
*/