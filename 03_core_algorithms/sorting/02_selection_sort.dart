// sorting using selection sort
// Time complexity: O(n²)
// Space complexity: O(1)

List<int> solution(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('list is empty');
  }

  for (int i = 0; i < numbers.length; i++) {
    int minIndex = i;
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[j] < numbers[minIndex]) {
        minIndex = j;
      }
    }

    if (numbers[minIndex] < numbers[i]) {
      int temp = numbers[i];
      numbers[i] = numbers[minIndex];
      numbers[minIndex] = temp;
    }
  }

  return numbers;
}

void main() {
  List<int> numbers = [29, 10, 14, 37, 13, 32];

  try {
    print(solution(numbers));
  } catch (e) {
    print(e);
  }
}


/*
- Take the list as input.
- Check if the list is empty.
- Use the outer loop to mark the start of the unsorted part.
- Find the smallest element in the unsorted part and remember its index.
- Swap the smallest element with the element at the outer-loop index.
- Repeat until the list is sorted.
- Return the list.
*/






// attempt 1
/* List<int> solution(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List is empty');
  }

  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[j] < numbers[i]) {
        int temp = numbers[j];
        numbers[j] = numbers[i];
        numbers[i] = temp;
      }
    }
  }

  return numbers;
}

void main() {
  List<int> numbers = [29, 10, 14, 37, 13, 32];

  try {
    print(solution(numbers));
  } catch (e) {
    print(e);
  }
}
*/

/*
- take the list as an input 
- check if the list is empty or not and handle error properly using the ArgumentError and try-catch block
- loop through the list to go through each element once.
- loop again to compare the other elements with the element of the first loop, and swapping them inside the same list
- the second loop can start at higher index as the starting elements are being sorted with smaller values as the loop continues.
- return the list.
*/