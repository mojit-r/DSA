// count the nodes of a linked list
// Time complexity: O(n)
// Auxiliary space complexity: O(1)

class Node {
  int data;
  Node? next;

  Node(this.data);
}

int countNodes(Node? head) {
  int count = 0;
  Node? currentNode = head;

  while (currentNode != null) {
    count++;
    currentNode = currentNode.next;
  }

  return count;
}

void main() {
  Node first = Node(10);
  Node second = Node(20);
  Node third = Node(30);
  Node fourth = Node(40);

  first.next = second;
  second.next = third;
  third.next = fourth;
  
  print(countNodes(first));
}


/*
- take the head node of the linked list as input.
- create a count variable with value zero and the currentNode variable with value of the head.
- create a while loop with condition currentNode != null so till the node is not null, the loop will iterate.
- inside the loop increase the count variable, i.e. count++ and place the next node into the currentNode.
- the loop will iterate till it reaches the last node whose next reference is null.
- at the end return the count variable.
*/