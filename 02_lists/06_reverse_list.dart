// Reversing a list
// Time complexity: O(n)
// Space complexity: O(n)

List<int> solution(List<int> numbers) {
  List<int> updatedList = [];

  if (numbers.isEmpty) {
    throw ArgumentError('invalid input');
  }

  for (int i = numbers.length - 1; i >= 0; i--) {
    updatedList.add(numbers[i]);
  }

  return updatedList;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  try {
    print(solution(numbers));
  } catch (e) {
    print(e);
  }
}
