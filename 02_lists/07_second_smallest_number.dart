// finding the second smallest number in a list
// Time complexity: O(n)
// Space complexity: O(1)

int soultion(List<int> numbers) {
  if (numbers.length < 2) {
    throw ArgumentError('invalid input');
  }

  int smallest = numbers[0];
  int secondSmallest = numbers[1];

  if (secondSmallest < smallest) {
    var temp = secondSmallest;
    secondSmallest = smallest;
    smallest = temp;
  }

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      secondSmallest = smallest;
      smallest = numbers[i];
    } else if ((numbers[i] < secondSmallest) && (smallest <= numbers[i])) {
      secondSmallest = numbers[i];
    }
  }

  return secondSmallest;
}

void main() {
  List<int> numbers = [33, 21, 45, 35, 11, 11, 19];

  try {
    print(soultion(numbers));
  } catch (e) {
    print(e);
  }
}
