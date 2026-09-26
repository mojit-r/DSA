// this code is for insertion of elements in a list
// Time complexity:  O(n)
// Space complexity: O(n)

List<int> solution(List<int> numbers, int index, int value) {
  if (index < 0 || index > numbers.length) {
    throw ArgumentError('invalid index');
  }

  List<int> updatedNumbers = [];
  for (int i = 0; i <= numbers.length; i++) {
    if (i == index) {
      updatedNumbers.add(value);
    }
    if (i != numbers.length) {
      updatedNumbers.add(numbers[i]);
    }
  }

  // for (int i = 0; i < numbers.length; i++) {
  //   if (i == index) {
  //     updatedNumbers.add(value);
  //   }
  //   updatedNumbers.add(numbers[i]);
  // }
  //
  // if (index == numbers.length) {
  //   updatedNumbers.add(value);
  // }

  return updatedNumbers;
}

void main() {
  List<int> numbers = [10, 20, 30, 40];
  int index = 4;
  int value = 99;

  try {
    print(solution(numbers, index, value));
  } catch (e) {
    print(e);
  }
}
