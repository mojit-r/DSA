// Sorting using insertion sort
// Time complexity: O(n²) average/worst case; O(n) best case
// Space complexity: O(1)

List<int> solution(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('list is empty');
  }

  for (int i = 1; i < numbers.length; i++) {
    int nextValue = numbers[i];
    int j = i - 1;

    while (j >= 0 && nextValue < numbers[j]) {
      numbers[j + 1] = numbers[j];
      j--;
    }

    numbers[j + 1] = nextValue;
  }

  return numbers;
}

void main() {
  List<int> numbers = [29, 7, 14, 37, 13];

  try {
    print(solution(numbers));
  } catch (e) {
    print(e);
  }
}

/*
- Take the input as a list.
- Check if the list is empty.
- Consider the first element as the sorted portion.
- The outer loop starts from the second element and selects the next element.
- Compare the selected element with the sorted portion from right to left.
- If the selected element is smaller, shift larger element one position to the right, then insert the saved element.
- Continue until the selected element reaches its correct position.
- Return the sorted list.
*/




// first attempt
// Time complexity: O(n²)
// Space complexity: O(1)

/*
List<int> solution(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('list is empty');
  }

  for (int i = 1; i < numbers.length; i++) {
    int nextElement = i;
    for (int j = i - 1; j >= 0; j--) {
      if (numbers[nextElement] < numbers[j]) {
        int temp = numbers[nextElement];
        numbers[nextElement] = numbers[j];
        numbers[j] = temp;
        nextElement--;
      } else {
        break;
      }
    }
  }

  return numbers;
}

void main() {
  List<int> numbers = [29, 7, 14, 37, 13];

  try {
    print(solution(numbers));
  } catch (e) {
    print(e);
  }
}
*/

/*
- Take the input as a list.
- Check if the list is empty.
- Consider the first element as the sorted portion.
- The outer loop starts from the second element and selects the next element.
- Compare the selected element with the sorted portion from right to left.
- If the selected element is smaller, swap it with the larger element.
- Continue until the selected element reaches its correct position.
- Return the sorted list.
*/