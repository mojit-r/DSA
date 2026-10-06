// sorting using bubble sort
// Time complexity: O(n²)
// Space complexity: O(1)

List<int> solution(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('list is empty');
  }

  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length - i - 1; j++) {
      if (numbers[j + 1] < numbers[j]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }

  return numbers;
}

void main() {
  List<int> numbers = [10, 7, 18, 9, 4, 5, 11, 17];

  try {
    print(solution(numbers));
  } catch (e) {
    print(e);
  }
}





/* 
- Need a list as an input.
- loop through the list to go through every element in the list.
- loop again the list to compare the adjacent elements and swap them.
- the second loop can iterate lesser as after each pass, the largest unsorted element moves to the end.
- return the original list as the elements are swapped inside the same loop only.
*/