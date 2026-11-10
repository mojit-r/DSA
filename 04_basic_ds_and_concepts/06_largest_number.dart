// implement recursion to find the largest number in the list
// Time complexity: O(n)
// Space complexity: O(n)

int findMax(List<int> numbers) {
  if (numbers.length <= 1) {
    return numbers[0];
  }
  final lastElement = numbers.removeLast();
  final compareElement = findMax(numbers);

  if (lastElement > compareElement) {
    return lastElement;
  } else {
    return compareElement;
  }
}

void main() {
  List<int> numbers = [3, 8, 2, 10, 5];

  print(findMax(numbers));
}


/*
- take the numbers as input.
- check if the numbers.length() is <= 1, if yes then return the numbers[0].
- then remove the last element of the list using numbers.removeLast() and take the returned value from it and store it into lastElement.
- and creating a variable compareElement which will store the value of findMax(numbers)
- Check if lastElement > compareElement. If yes, return lastElement; otherwise, return compareElement.
- so each upcoming recursive call will get one lesser element which will make it reach the length <= 1 and legitimately first element.
- then the real comparison will start while coming down the method calls and we will get the largest number.
*/