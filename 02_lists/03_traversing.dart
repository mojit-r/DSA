// Traversing through a list to access an element by index.

// Accessing a list element by index is: O(1)
// Traversing simply means: Go through the elements one by one.

// Time complexity: O(n)
// Space complexity: O(1)

int? solution(List<int> numbers, int? index) {
  if (numbers.isEmpty) {
    throw ArgumentError('the list cannot be empty');
  }

  if (index == null) {
    throw ArgumentError('index is invalid');
  }
  if (index < 0 || index >= numbers.length) {
    return null;
  }

  for (var i = 0; i < numbers.length; i++) {
    if (i == index) {
      return numbers[i];
    }
  }

  return null;
}

void main() {
  List<int> numbers = [32, 12, 54, 7, 28];
  int index = 4;

  print(solution(numbers, index));
}
