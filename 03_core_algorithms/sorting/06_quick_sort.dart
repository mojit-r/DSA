// sorting using quick sort
// Time complexity: O(n log n) average, O(n²) worst
// Space complexity: O(n) average, O(n²) worst

List<int> solution(List<int> numbers) {
  List<int> left = [];
  List<int> equal = [];
  List<int> right = [];

  if (numbers.length <= 1) {
    return numbers;
  }
  int pivot = numbers[0];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < pivot) {
      left.add(numbers[i]);
    } else if (numbers[i] > pivot) {
      right.add(numbers[i]);
    } else {
      equal.add(numbers[i]);
    }
  }

  return [...solution(left), ...equal, ...solution(right)];
}

void main() {
  List<int> numbers = [7, 2, 9, 4, 1, 6, 3];

  print(solution(numbers));
}



/*
- take the list\ as input.
- If the list contains 0 or 1 elements, return it.
- create three lists: left, equal and right.
- put smaller, equal and larger elements in the respective lists.
- recursively sort left and right.
- combine the sorted left list, equal list and sorted right list.
*/