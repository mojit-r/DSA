// the code for finding the smallest number from the list
// Time complexity: O(n)
// Space complexity: O(1)

/*
- Big O focuses on how an algorithm scales.
- Constants are ignored.
- Two loops do not automatically mean O(n²);
  I need to check how many times each loop actually runs.
*/

int solution(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty');
  }

  int smallest = numbers[0];

  for (var i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }

  return smallest;
}

void main() {
  List<int> numbers = [32, 12, 54, 7, 28, 19, 41];
  print('The smallest number in the list $numbers is ${solution(numbers)}');
}
