// code for deleting an element from a list
// Time complexity:  O(n)
// Space complexity: O(n)

List<int> solution(List<int> numbers, int index) {
  List<int> updatedList = [];

  if (index < 0 || index >= numbers.length) {
    throw ArgumentError('invalid index');
  }

  for (int i = 0; i < numbers.length; i++) {
    if (i != index) {
      updatedList.add(numbers[i]);
    }
  }

  return updatedList;
}

void main() {
  List<int> numbers = [10, 20, 30, 40];
  int index = 1;

  try {
    print(solution(numbers, index));
  } catch (e) {
    print(e);
  }
}
