// sorting using merge sort
// Time complexity: O(n log n)
// Space complexity: O(n)

List<int> solution(List<int> numbers) {
  if (numbers.length <= 1) {
    return numbers;
  }

  int middle = numbers.length ~/ 2;
  List<int> left = numbers.sublist(0, middle);
  List<int> right = numbers.sublist(middle);

  left = solution(left);
  right = solution(right);

  return mergeOperation(left, right);
}

List<int> mergeOperation(List<int> first, List<int> second) {
  List<int> combined = [];
  int i = 0;
  int j = 0;

  while (i < first.length) {
    if (j >= second.length) {
      combined.add(first[i]);
      i++;
      continue;
    }
    if (first[i] <= second[j]) {
      combined.add(first[i]);
      i++;
    } else {
      combined.add(second[j]);
      j++;
    }
  }

  while (j < second.length) {
    combined.add(second[j]);
    j++;
  }

  return combined;
}

void main() {
  List<int> numbers = [9, 8, 7, 6, 5, 4, 3, 2, 1];

  print(solution(numbers));
}


/*
- take the list as input
- split the list from the half and continue the process until the lists has only on element left
- we will split the list using the sublist() while passing the middle index calculated using ~/
- then we will merge the splitted lists of single elements using the merge operation.
- we will perform this operation recurrsively so we won't be needed to store the variables separately
- return the sorted merged list
*/